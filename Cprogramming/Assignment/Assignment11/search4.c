#include<stdio.h>
#include<string.h>
void main()
{
    char str[20];
    printf("Enter the string1:");
    scanf("%s",str);
    printf("%s",str);
    char ch[10];
    printf("\n Enter the string2:");
    scanf(" %s",ch);
    char *ptr=strpbrk(str,ch);
    printf("%c",*ptr);
    
}//string search function;