#include <detpic32.h>

static int kms = 20000; // 2*10^4 = 20*10^3
void delay(unsigned int ms)
{
    resetCoreTimer();
    while (readCoreTimer() < ms * kms)
        ;
}

static char displayFlag = 1;
static const char disp7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0X66, 0X6D, 0X7D, 0X07, 0X7F, 0X6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

void send2display(unsigned char value)
{
    // int right = value % 10;
    // int left = value / 10;
    if (displayFlag == 1)
    {
        LATDbits.LATD6 = 0;
        LATDbits.LATD5 = 1;

        LATB = (LATB & 0x80FF) | disp7Scodes[value & 0x0F] << 8;
        displayFlag = 0;
    }
    else
    {
        LATDbits.LATD6 = 1;
        LATDbits.LATD5 = 0;

        LATB = (LATB & 0x80FF) | disp7Scodes[value >> 4] << 8;
        displayFlag = 1;
    }
}
unsigned char toBcd(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}
int main(void)
{
    TRISB = TRISB & 0x00FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;

    // TRISBbits.TRISB0 = 1;
    // RBbits.RB0 = 1;
    int counter = 0xF0; // works both with hexadecimal and decimal
    printf("Desired starting point = %d\n", counter);
    int reps;
    while (1)
    {
        if (counter >= 0xFF)
        {
            counter = 0;
            printf("-----------------\nSurpassed 99 so program counter will restart!\n-----------------\n");
        }
        reps = 0;
        printf("Current value: %d\n", counter);
        do
        {
            // send2display(toBcd(counter));
            send2display(counter);
            delay(5); // simulate both ON at the same time
            reps++;
        } while (reps < 100); // more reps will slow down the cronometer(the displayed value)
        counter++;
    }
}
