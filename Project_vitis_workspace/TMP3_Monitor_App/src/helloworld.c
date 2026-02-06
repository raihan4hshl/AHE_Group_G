#include <stdio.h>
#include "xparameters.h"
#include "xiic.h"
#include "xil_printf.h"
#include "sleep.h"

// Check your xparameters.h for the exact name, it might be XPAR_AXI_IIC_0_BASEADDR
#define IIC_DEVICE_ID    XPAR_IIC_0_DEVICE_ID 
#define TMP3_ADDR        0x4B 

int main() {
    XIic IicInstance;
    u8 ReadBuffer[2];
    int Status;

    // Use xil_printf for MicroBlaze to save memory
    xil_printf("--- Nexys A7 TMP3 Monitor ---\r\n");

    Status = XIic_Initialize(&IicInstance, IIC_DEVICE_ID);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    while(1) {
        u8 RegPtr = 0x00;
        // The first argument is the address of the instance
        XIic_Send(IicInstance.BaseAddress, TMP3_ADDR, &RegPtr, 1, XIIC_REPEATED_START);
        XIic_Recv(IicInstance.BaseAddress, TMP3_ADDR, ReadBuffer, 2, XIIC_STOP);

        int RawData = ((ReadBuffer[0] << 8) | ReadBuffer[1]) >> 4;
        if (RawData > 2047) RawData -= 4096;
        float TempC = RawData * 0.0625;

        // Note: printf requires a larger heap size than xil_printf
        printf("Temp: %.2f C\r\n", TempC);

        usleep(1000000); 
    }
    return 0;
}