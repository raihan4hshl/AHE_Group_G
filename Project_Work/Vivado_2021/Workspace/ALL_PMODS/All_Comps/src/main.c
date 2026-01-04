/******************************************************************************
 * main.c — MAXSONAR + ALS -> OLED update every 1 second (MicroBlaze)
 * - Shows distance in centimeters
 * - Shows light value
 ******************************************************************************/

#include "PmodALS.h"
#include "PmodMAXSONAR.h"
#include "PmodOLEDrgb.h"

#include "sleep.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_types.h"

#include <stdio.h>   // snprintf

/************ Macro Definitions ************/

#define PMOD_MAXSONAR_BASEADDR  XPAR_PMODMAXSONAR_0_AXI_LITE_GPIO_BASEADDR

#ifdef __MICROBLAZE__
#define CLK_FREQ               XPAR_CPU_M_AXI_DP_FREQ_HZ
#else
#define CLK_FREQ               100000000
#endif

#define ALS_SPI_BASEADDR       XPAR_PMODALS_0_AXI_LITE_SPI_BASEADDR
#define OLED_GPIO_BASEADDR     XPAR_PMODOLEDRGB_0_AXI_LITE_GPIO_BASEADDR
#define OLED_SPI_BASEADDR      XPAR_PMODOLEDRGB_0_AXI_LITE_SPI_BASEADDR

#define UPDATE_PERIOD_US       1000000   // 1 second

/************ Global Variables ************/

PmodMAXSONAR sonar;
PmodALS      als;
PmodOLEDrgb  oled;

/************ Cache Helpers ************/

static void EnableCaches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheEnable();
#endif
#endif
}

static void DisableCaches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheDisable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheDisable();
#endif
#endif
}

/************ Main ************/

int main(void)
{
    EnableCaches();

    // Init devices
    MAXSONAR_begin(&sonar, PMOD_MAXSONAR_BASEADDR, CLK_FREQ);
    ALS_begin(&als, ALS_SPI_BASEADDR);
    OLEDrgb_begin(&oled, OLED_GPIO_BASEADDR, OLED_SPI_BASEADDR);

    // Splash
    OLEDrgb_Clear(&oled);
    OLEDrgb_SetFontColor(&oled, OLEDrgb_BuildRGB(0, 255, 0));
    OLEDrgb_SetCursor(&oled, 0, 0);
    OLEDrgb_PutString(&oled, "ALS + SONAR");
    OLEDrgb_SetCursor(&oled, 0, 2);
    OLEDrgb_PutString(&oled, "1s updates...");
    usleep(800000);

    while (1)
    {
        // Read sensors
        u8  light   = ALS_read(&als);                 // 0..255 typically
        u32 dist_in = MAXSONAR_getDistance(&sonar);   // inches (Digilent demo)

        // Convert inches -> centimeters (integer math)
        // cm = in * 2.54  =>  cm_int = (in * 254) / 100
        u32 dist_cm = (dist_in * 254U) / 100U;

        // UART output (every 1s)
        xil_printf("Light=%d  Dist=%d cm\r\n", (int)light, (int)dist_cm);

        // Update OLED
        OLEDrgb_Clear(&oled);

        OLEDrgb_SetFontColor(&oled, OLEDrgb_BuildRGB(0, 255, 0));
        OLEDrgb_SetCursor(&oled, 0, 0);
        OLEDrgb_PutString(&oled, "ALS + MAXSONAR");

        // ALS line
        {
            char buf[32];
            OLEDrgb_SetFontColor(&oled, OLEDrgb_BuildRGB(0, 0, 255));
            OLEDrgb_SetCursor(&oled, 0, 2);
            snprintf(buf, sizeof(buf), "Light: %3d", (int)light);
            OLEDrgb_PutString(&oled, buf);
        }

        // Distance line (cm)
        {
            char buf[32];
            OLEDrgb_SetFontColor(&oled, OLEDrgb_BuildRGB(255, 255, 0));
            OLEDrgb_SetCursor(&oled, 0, 4);
            snprintf(buf, sizeof(buf), "Dist : %3d cm", (int)dist_cm);
            OLEDrgb_PutString(&oled, buf);
        }

        // Wait 1 second
        usleep(UPDATE_PERIOD_US);
    }

    // unreachable
    DisableCaches();
    return 0;
}
