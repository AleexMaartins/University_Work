#define SIZE 20

char *strcat(char *, char *);
char *strcpy(char *, char *);
int strlen(char *);
int main(void)
{
    static char str1[SIZE + 1];
    static char str2[SIZE + 1];
    static char str3[2 * SIZE + 1];
    printStr("Introduza 2 strings: ");
    readStr(str1, SIZE);
    printStr("\n");
    readStr(str2, SIZE);
    printStr("\n");
    printStr("Resultados:\n");
    printInt(strlen(str1), 10);
    printStr("\n");
    printInt(strlen(str2), 10);
    printStr("\n");
    strcpy(str3, str1);
    printStr("\n");
    printStr(strcat(str3, str2));
    printStr("\n");
    printInt10(strcmp(str1, str2));
    return 0;
}
// Returns the length of string "str" (excluding the null character)
int strlen(char *str)
{
    int len;
    for (len = 0; *str != '\0'; len++, str++)
        ;
    return len;
}
// Copy the string pointed by "src" (including the null character) to
// destination (pointed by "dst")
char *strcpy(char *dst, char *src)
{
    char *p = dst;
    for (; (*dst = *src) != '\0'; dst++, src++)
        ;
    return p;
}
// Concatenates "dst" and "src" strings
// The result is stored in the "dst" string
char *strcat(char *dst, char *src)
{
    char *p = dst;

    for (; *dst != '\0'; dst++)
        ;
    strcpy(dst, src);
    return p;
}
