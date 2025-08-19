#include<stdio.h>
#include<string.h>
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    printf("%s",str);
    int x=strlen(str);
    printf("\n %d",x);
} //string length function;