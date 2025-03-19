#include <detpic32.h>

int main(void)
{
    char ch;
    int counter = 0;
    TRISB = (TRISB & 0x00FF); // TRISB[14,8] as output
    TRISDbits.TRISD5 = 0;     // RD5 as output
    TRISDbits.TRISD6 = 0;     // RD6 as output

    LATDbits.LATD6 = 0; // 1 = left display ON
    LATDbits.LATD5 = 1; // 1 = right display ON

    LATB = LATB & 0x00FF;
    printf("%d", counter);
    while (1)
    {
        ch = getChar();
        // GFE DCBA
        // 111 1111 -> all on
        if (ch == 'a') // A
            LATB = (LATB & 0x80FF) | 0x77 << 8;
        if (ch == 'b') // b
            LATB = (LATB & 0x80FF) | 0x7C << 8;
        if (ch == 'c') // C
            LATB = (LATB & 0x80FF) | 0x39 << 8;
        if (ch == 'd') // d
            LATB = (LATB & 0x80FF) | 0x5E << 8;
        if (ch == 'e') // E
            LATB = (LATB & 0x80FF) | 0x79 << 8;
        if (ch == 'f') // F
            LATB = (LATB & 0x80FF) | 0x71 << 8;
        if (ch == 'g') // G
            LATB = (LATB & 0x80FF) | 0x3D << 8;
        counter++;
        printf(",%d", counter);
    }
    return 0;
}