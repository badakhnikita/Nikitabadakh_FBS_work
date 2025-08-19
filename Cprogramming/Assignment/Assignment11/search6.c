#include<stdio.h>
#include<string.h>
void main()
{
    char str[20];
    printf("Enter the string:");
    scanf("%s",str);
    printf("%s",str);
    char ch[10];
    printf("\n enter the delimeter");
    scanf(" %s",ch);
    char *ptr=strtok(str,ch);
    while(ptr !=NULL)
    {
    printf("\n %s",ptr);
    ptr=strtok(NULL,ch);
    }
} //string search function;