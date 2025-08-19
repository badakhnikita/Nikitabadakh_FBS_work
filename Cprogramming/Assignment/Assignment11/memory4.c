#include<stdio.h>
#include<string.h>
void main()
{
    char str[10];
    printf("Enter the string1:");
    scanf("%s",str);
    printf("%s",str);
    char ch;
    printf("\n Enter the charcter which you want to search");
    scanf(" %c",&ch);
    char *ptr=memchr(str,ch,6);
    printf("%s",ptr);
    
}//string memory manipulation function;