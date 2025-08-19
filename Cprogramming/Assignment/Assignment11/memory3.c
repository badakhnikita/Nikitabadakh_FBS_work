#include<stdio.h>
#include<string.h>
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    printf("%s",str);
    memset(str,'A',sizeof(str));
    printf("\n after  %s",str);
}//string memory manipulation function;