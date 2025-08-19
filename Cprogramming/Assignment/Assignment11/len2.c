#include<stdio.h>
#include<string.h>
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    printf("%s",str);
    char temp[10];
    int x=strxfrm(temp,str,6);
    printf("\n original: %s",str);
     printf("\n Transformed: %s",temp);
    printf("\n %d",x);
} //string length function;