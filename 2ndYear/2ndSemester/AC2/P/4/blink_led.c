#include <detpic32.h>

static int kms = 20000; // 2*10^4 = 20*10^3
void delayMsec(unsigned int ms)
{
    resetCoreTimer();
    while (readCoreTimer() < ms * kms)
        ;
}
int main(void)
{
    int counter = 0;
    TRISCbits.TRISC14 = 0;
    while (1)
    {
        LATCbits.LATC14 = !LATCbits.LATC14;
        delayMsec(1000);
        counter++;
        printf("%d,", counter);
    }
    return 0;
}
