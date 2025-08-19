#include<stdio.h>
#include<string.h>
void main()
{
    char str[10];
    printf("Enter the string1:");
    scanf("%s",str);
    printf("%s",str);
    char temp[10];
    printf("\n Enter the string2:");
    scanf("%s",temp);
    printf("%s",temp);
    printf("\n After copying the string:");
    printf("\n %s",strncat(temp,str,3));
}//string manipulation function;