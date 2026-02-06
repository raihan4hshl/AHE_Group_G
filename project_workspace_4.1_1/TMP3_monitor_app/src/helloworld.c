#include <stdio.h>
#include "xparameters.h"
#include "xiic.h"
#include "xil_printf.h"
#include "sleep.h"

// Check xparameters.h for exact names; usually XPAR_IIC_0_DEVICE_ID
#define IIC_DEVICE_ID    XPAR_IIC_0_DEVICE_ID
#define TMP3_ADDR        0x4B 

int main() {
    XIic Iic;
    u8 ReadBuffer[2];
    u8 RegPtr = 0x00;

    xil_printf("TMP3 Temperature Monitor Initializing...\r\n");

    XIic_Initialize(&Iic, IIC_DEVICE_ID);

    while(1) {
        // Point to Reg 0, then read 2 bytes
        XIic_Send(Iic.BaseAddress, TMP3_ADDR, &RegPtr, 1, XIIC_REPEATED_START);
        XIic_Recv(Iic.BaseAddress, TMP3_ADDR, ReadBuffer, 2, XIIC_STOP);

        // Convert 12-bit data to Celsius
        int RawData = ((ReadBuffer[0] << 8) | ReadBuffer[1]) >> 4;
        if (RawData > 2047) RawData -= 4096;
        float TempC = RawData * 0.0625;

        printf("Temperature: %.2f C\r\n", TempC);
        usleep(1000000); 
    }
    return 0;
}