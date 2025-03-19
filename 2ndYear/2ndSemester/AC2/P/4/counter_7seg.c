#include <detpic32.h>
static int kms = 20000; // 2*10^4 = 20*10^3
void delay(unsigned int ms)
{
    resetCoreTimer();
    while (readCoreTimer() < ms * kms)
        ;
}

int main(void)
{
    // 0111 1111 1111 1111
    // X 14 13 12     11 10 9 8      7 6 5 4     3 2 1 0
    // cada posiçao do bin7seg está entre 14 e 8
    TRISB = TRISB & 0x00FF; // definir 14 até 8 como 0, ou seja output
    // LATB =  LATB & 0x00FF;
    TRISDbits.TRISD6 = 0;
    TRISDbits.TRISD5 = 0;

    LATDbits.LATD6 = 0; // off
    LATDbits.LATD5 = 1; // on
    int counter = 0;
    static const char disp7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0X66, 0X6D, 0X7D, 0X07, 0X7F, 0X6F};
    while (1)
    {
        printf("%d", counter);
        LATB = (LATB & 0x00FF) | disp7Scodes[counter++] << 8;
        delay(500);
        if (counter == 10)
            counter = 0;
    }
}