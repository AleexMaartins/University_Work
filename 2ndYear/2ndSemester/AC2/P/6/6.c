#include <detpic32.h>

static int kms = 20000; // 2*10^4 = 20*10^3
static int displayFlag = 1;
static const char disp7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0X66, 0X6D, 0X7D, 0X07, 0X7F, 0X6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

void delayMsec(unsigned int ms)
{
    resetCoreTimer();
    while (readCoreTimer() < ms * kms)
        ;
}
void send2display(unsigned char value)
{
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

void setup();

int main(void)
{
    setup(); // Configure the A/D module and port RB4 as analog input
    while (1)
    {
        AD1CON1bits.ASAM = 1; // Start conversion (takes 10 clock cycles)
        TRISB = TRISB & 0x00FF;
        TRISDbits.TRISD5 = 0;
        TRISDbits.TRISD6 = 0;
        while (IFS1bits.AD1IF == 0)
            ; // Wait while conversion not done (A1IF == 0)
        int *p = (int *)(&ADC1BUF0);
        int i = 0;
        int average = 0;
        for (; i < 16; i++)
        {
            average = average + p[i * 4];
        }
        average = average / i;
        printInt(average, 16 | 2 << 16); // 2 is the number of characters that show in the terminal
        putChar('\r');
        send2display(average);
        IFS1bits.AD1IF = 0; // Reset AD1IF
    }
    return 0;
}

setup()
{
    TRISBbits.TRISB4 = 1;     // RBx digital output disconnected
    AD1PCFGbits.PCFG4 = 0;    // RBx configured as analog input
    AD1CON1bits.SSRC = 7;     // Conversion trigger selection bits: in this
                              // mode an internal counter ends sampling and
                              // starts conversion
    AD1CON1bits.CLRASAM = 1;  // Stop conversions when the 1st A/D converter
                              // interrupt is generated. At the same time,
                              // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16;    // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 4 - 1; // Interrupt is generated after N samples
                              // (replace N by the desired number of
                              // consecutive samples)
    AD1CHSbits.CH0SA = 4;     // replace x by the desired input
                              // analog channel (0 to 15)
    AD1CON1bits.ON = 1;       // Enable A/D converter
                              // This must the last command of the A/D
                              // configuration sequence
}