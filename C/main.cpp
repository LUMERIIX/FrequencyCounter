#include <stdio.h>
#include <stdlib.h>

//typedef unsigned long uint32_t;
//I2C--------------------------------------------
volatile unsigned int* I2C_PRER_LO =    (unsigned int*)     0x8004;      //Prescale register low byte
volatile unsigned int* I2C_PRER_HI =    (unsigned int*)     0x8008;      //Prescale register high byte
volatile unsigned int* I2C_CTR =        (unsigned int*)     0x800C;      //Control register
volatile unsigned int* I2C_TXR =        (unsigned int*)     0x8010;      //Transmit register
volatile unsigned int* I2C_RXR =        (unsigned int*)     0x8014;      //Receive register
volatile unsigned int* I2C_CR =         (unsigned int*)     0x8018;      //Command register
volatile unsigned int* I2C_SR =         (unsigned int*)     0x801C;      //Status register
//IO-------------------------------------------------------
volatile unsigned int* LEDS =           (unsigned int*)     0x8020;
volatile unsigned int* TestStatus =     (unsigned int*)     0x8030;
//FC-------------------------------------------------------
volatile unsigned int* ChannelConfig =  (unsigned int*)     0xA004;      //write
volatile unsigned int* Timebase =       (unsigned int*)     0xA008;      //write
volatile unsigned int* CounterReset =   (unsigned int*)     0xA00C;      //write
volatile unsigned int* StartMeas =      (unsigned int*)     0xA010;      //write
volatile unsigned int* MeasValueValid = (unsigned int*)     0xA014;      //read
volatile unsigned int* RefCountVal_Hi =   (unsigned int*)   0xA020;      //read
volatile unsigned int* RefCountVal_HiMi =   (unsigned int*) 0xA024;      //read
volatile unsigned int* RefCountVal_MiLo =   (unsigned int*) 0xA028;      //read
volatile unsigned int* RefCountVal_Lo =   (unsigned int*)   0xA02C;      //read
volatile unsigned int* MeasCountVal_Hi =  (unsigned int*)   0xA030;      //read
volatile unsigned int* MeasCountVal_HiMi =  (unsigned int*) 0xA034;      //read
volatile unsigned int* MeasCountVal_MiLo =  (unsigned int*) 0xA038;      //read
volatile unsigned int* MeasCountVal_Lo =  (unsigned int*)   0xA03C;      //read
//UART-----------------------------------------------------
volatile unsigned int* RxData =         (unsigned int*)     0xE004;      //read
volatile unsigned int* TxData =        (unsigned int*)      0xE008;        //write
volatile unsigned int* tx_busy =        (unsigned int*)     0xE00C;      //read
volatile unsigned int* tx_enable =      (unsigned int*)     0xE010;      //write
//Calib----------------------------------------------------
volatile unsigned int DAC_DATA_HI;
volatile unsigned int DAC_DATA_LO;
volatile unsigned int DAC_Reg;
volatile unsigned int DAC_EEPROM_LO;
volatile unsigned int DAC_EEPROM_HI;
volatile unsigned int Write_State = 0;
volatile unsigned int Read_State;
volatile unsigned int test;
volatile unsigned int i;
//---------------------------------------------------
int i2c_master_init (void);
int i2c_write(unsigned int);
int i2c_read(void);
volatile int d = 0;
int sendBytes = 0;
unsigned int MeasCount;
unsigned int RefCount;
unsigned int DataTx = 0;
unsigned int MeasCount1 = 0;
unsigned int MeasCount2 = 0;
unsigned int MeasCount3 = 0;
unsigned int MeasCount4 = 0;

const int MaxVCTOXOCtrlVal = 3723;
const int TypVCTOXOCtrlVal = 2048;
const int MinVCTOXOCtrlVal = 373;
const int MaxAOCJY1CtrlVal = 2668;
const int TypAOCJY1CtrlVal = 2048;
const int MinAOCJY1CtrlVal = 1428;

typedef enum
{
    Startup,
    Idle,
    Measure,
    Calib,
    Transmit
} my_state_t;

int main(void)
{
    my_state_t state = Startup;
    //i2c_master_init();
    int i = 0;
    while(1)
    {
        //i2c_write(2048);
        switch(state)
        {
            case Startup:
                i2c_master_init();
                state = Idle;
            break;
            case Idle:
                if(((*RxData)&0x80) == 0x80)
                {
                    *ChannelConfig = ((*RxData)&0x03);
                    *Timebase = ((*RxData)&0x0C) >> 2;
                    *LEDS = *RxData;
                    *CounterReset = 0;

                    state = Measure;
                    *StartMeas = 1;

                }
                if(((*RxData)&0x40) == 0x40)
                {
// ;
                    //*CalibOsc = 1;
                    //state = Calib;
                }
            break;

            case Measure:
                //*LEDS = *MeasValueValid;
                if(((*MeasValueValid)&0x01) == 0x01)
                {
                    *StartMeas = 0;
//                    MeasCount1 = *MeasCountVal_Hi;
//                    MeasCount2 = *MeasCountVal_HiMi;
//                    MeasCount3 = *MeasCountVal_MiLo;
//                    MeasCount4 = *MeasCountVal_Lo;
                    MeasCount = ((*MeasCountVal_Hi) << 24)&0xFF000000;
                    MeasCount |= (((*MeasCountVal_HiMi) << 16)&0x00FF0000);
                    MeasCount |= (((*MeasCountVal_MiLo) << 8) &0x0000FF00);
                    MeasCount |= ((*MeasCountVal_Lo)&0x000000FF);
//                    if(MeasCount == 0x00000C9A)
//                        *LEDS = 0xFF;
                    RefCount = ((*RefCountVal_Hi) << 24)&0xFF000000;
                    RefCount |= (((*RefCountVal_HiMi) << 16)&0x00FF0000);
                    RefCount |= (((*RefCountVal_MiLo) << 8) &0x0000FF00);
                    RefCount |= ((*RefCountVal_Lo)&0x000000FF);
                    state = Transmit;
                    sendBytes = 0x00;
//                    MeasCount = 0x12345678;
//                    RefCount =  0x9ABCDEF0;
                    *CounterReset = 1;
                }
            break;

//            case Calib:
//
//
//            break;

            case Transmit:
                if(((*tx_busy)&0x01) == 0x00)
                {
                    *StartMeas = 0;
//                    if(sendBytes < 8)
//                    {
//                        if(sendBytes == 0)
//                        {
//                            DataTx = MeasCount;
//                        }
//                        if(sendBytes == 4)
//                        {
//                            DataTx = RefCount;
//                        }
//                        else
//                        {
//                            *TxData = (DataTx>>24);
//                            *tx_enable = 1;
//                            *tx_enable = 0;
//                            DataTx = DataTx << 8;
//                            sendBytes++;
//                        }
//                        if(sendBytes == 8)
//                        {
//                            state = Idle;
//                            //sendBytes = 0x00;
//                            *TxData = 0x00;
//                            //*CounterReset = 0;
//                            *tx_enable = 0x00;
//                        }
//
//                    }
                    if(sendBytes == 0)
                    {
                        DataTx = MeasCount;
                    }
                    if(sendBytes == 4)
                    {
                         DataTx = RefCount;
                    }
                    if(sendBytes == 8)
                    {
                        *tx_enable = 0;
                        *TxData = 0;
                        state = Idle;
                    }
                    if((((*RxData)&0x70)>>4) == sendBytes)
                    {
                        *TxData = (DataTx>>24);
                        *tx_enable = 1;
                        *tx_enable = 0;
                        DataTx = DataTx << 8;
                        sendBytes++;
                    }
                }
//                        if(sendBytes < 4)
//                        {
//                            *LEDS = (MeasCount>>24);
//                            *TxData = (MeasCount>>24);
//                            *tx_enable = 1;
//                            *tx_enable = 0;
//                            MeasCount = MeasCount << 8;
//                            sendBytes++;
//                        }
//                        if(sendBytes >= 4 && sendBytes < 8)
//                        {
//                            *LEDS = (RefCount>>24);
//                            *TxData = (RefCount>>24);
//                            *tx_enable = 1;
//                            *tx_enable = 0;
//                            RefCount = RefCount << 8;
//                            sendBytes++;
//                        }
//                    }
//                }
//                else if(sendBytes == 8)
//                {
//                    *tx_enable = 0;
//                    *TxData = 0x00;
//                    sendBytes = 0;
//                    state = Idle;
//                }

            break;
        }
//        i2c_write(0x800);
//        *tx_enable = 1;
//        *TxData = 0xAA;
//        *LEDS = *I2C_SR;

    }


//        i2c_read();
//    }
}

int i2c_master_init(void)
{
    *I2C_PRER_HI = 0x00000000;  //Set Prescale to Register 0x14 ==> (10MHz/500kHz)-1
    *I2C_PRER_LO = 0x00000013;
    *I2C_CTR = 0x00000080;
    *I2C_TXR = 0x00000000;
    Write_State = 0;
    i2c_write(2048);

}

int i2c_write(unsigned int Data)
{
    *LEDS = *I2C_SR;
    int i = 0;
    for(;Write_State < 4;)
    {
        if(/*(((*I2C_SR)&0x00080) == 0x00000000)&& */Write_State == 0)               //1 byte
        {
            *I2C_CR = 0x000000090;      //STA,WR
            *I2C_TXR = 0x000000C8;      //C0//I2C DAC adress + write_bit
            while(((*I2C_SR)&0x02) == 0x02 /*&&  i != 0x0000FFFF*/)
            {i++;
            }
             Write_State = 1;
             *TestStatus = 1;
        }
    /////////////////////////////////////////////////////////////
        else if(/*(((*I2C_SR)&0x00080) == 0x00000000)&& */Write_State == 1)  //2 byte
        {
            //*TestStatus = 0;
            *I2C_TXR = 0x00000060;     //60 //C2,C1,C0,X,X,PD1,PD0
            *I2C_CR = 0x000000010;      //WR
            while(((*I2C_SR)&0x02) == 0x02 /*&&  i != 0x0000FFFF*/)
            {i++;
            }
                Write_State = 2;
        }
    //////////////////////////////////////////////////////////
        else if(/*(((*I2C_SR)&0x00080) == 0x00000000)&& */Write_State == 2)  //3 byte    Mask all relevat bits and look for now failure (E3)
        {
            *I2C_TXR =  (Data >> 4);      //D11,D10,D9,D8,D7,D6,D5,D4  Data >> 4
            *I2C_CR = 0x000000010;      //WR
            while(((*I2C_SR)&0x02) == 0x02 /*&&  i != 0x0000FFFF*/)
            {i++;
            }
            Write_State = 3;
        }
    ///////////////////////////////////////////////////////////////
        else if(/*(((*I2C_SR)&0x00080) == 0x00000000)&& */Write_State == 3)  //4 byte
        {
            *I2C_TXR = ((Data&0x0F) << 4);      //D3,D2,D1,D0,X,X,X,X
            *I2C_CR = 0x000000050;      //WR,STO
            while(((*I2C_SR)&0x02) != 0x02 /*&&  i != 0x0000FFFF*/)
            {i++;
            }
            Write_State = 4;
            *I2C_CR = 0x000000040;
        }
        *LEDS = *I2C_SR;
    }
    Write_State = 0;
}

int i2c_read(void)
{
    unsigned int i = 0;
    if((((*I2C_SR)&0x00080) == 0x00000000)&& Read_State == 0)               //1 byte Mask(E3)
    {
        *I2C_CR = 0x0000000A0;      //STA,RD
        *I2C_TXR = 0x000000C1;      //I2C DAC adress + read_bit
        while(((*I2C_SR)&0x00000002) == 0x00000002/* ||  i != 0x0000FFFF*/)
        {/*i++;*/
        }
        Read_State = 1;
    }
////////////////////////////////////////////////////////////////////////////
    if((((*I2C_SR)&0x00080) == 0x00000000)&& Read_State == 1)               //2 byte
    {
        *I2C_CR = 0x000000020;      //RD
        DAC_Reg = *I2C_RXR;         //DAC Registers
        while(((*I2C_SR)&0x00000002) == 0x00000002/* ||  i != 0x0000FFFF*/)
        {/*i++;*/
        }
        Read_State = 2;
    }
/////////////////////////////////////////////////////////////////////////////
    if((((*I2C_SR)&0x00080) == 0x00000000)&& Read_State == 2)              //3 byte
    {
        *I2C_CR = 0x000000020;      //RD
        DAC_DATA_HI = *I2C_RXR;         //Data D11..D4
        while(((*I2C_SR)&0x00000002) == 0x00000002/* ||  i != 0x0000FFFF*/)
        {/*i++;*/
        }
        Read_State = 3;
    }
/////////////////////////////////////////////////////////////////////////////
    if((((*I2C_SR)&0x00080) == 0x00000000)&& Read_State == 3)               //4 byte
    {
        *I2C_CR = 0x000000020;      //RD
        DAC_DATA_LO = *I2C_RXR;         //Data D3..D0
        while(((*I2C_SR)&0x00000002) == 0x00000002/* ||  i != 0x0000FFFF*/)
        {/*i++;*/
        }
        Read_State = 4;
    }
///////////////////////////////////////////////////////////////////////////////
    if((((*I2C_SR)&0x00080) == 0x00000000)&& Read_State == 4)               //5 byte
    {
        *I2C_CR = 0x000000020;      //RD
        DAC_EEPROM_HI = *I2C_RXR;         //Data D11..D08
        while(((*I2C_SR)&0x00000002) == 0x00000002/* ||  i != 0x0000FFFF*/)
        {/*i++;*/
        }
        Read_State = 5;
    }
///////////////////////////////////////////////////////////////////////////////
    if((((*I2C_SR)&0x00080) == 0x00000000)&& Read_State == 5)              //6 byte
    {
        *I2C_CR = 0x000000020;      //RD
        DAC_EEPROM_LO = *I2C_RXR;         //Data D7..D0
        while(((*I2C_SR)&0x00000002) == 0x00000002/* ||  i != 0x0000FFFF*/)
        {/*i++;*/
        }
        Read_State = 0;
        *I2C_CR = 0x000000040;
    }
    if(Read_State > 0 && (*I2C_SR&0x40) == 0)
    {
        *I2C_CR = 0x000000040;
    //        *I2C_CTR = 0x00;
    //        while(*I2C_CTR != 0x00)
    //        {
    //            *I2C_CTR = 0x00;
    //        }
        *I2C_TXR = 0x00;
    }
}

