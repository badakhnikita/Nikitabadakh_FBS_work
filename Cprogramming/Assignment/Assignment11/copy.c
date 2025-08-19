#include<stdio.h>
#include<string.h>
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    printf("%s",str);
    char temp[10];
    printf("\n After copying the string:");
    printf("\n %s",strcpy(temp,str));
} //string manipulation function;