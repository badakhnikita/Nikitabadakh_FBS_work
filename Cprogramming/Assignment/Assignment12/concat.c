#include<stdio.h>
#include<string.h>
char* mystrcat(char* ,char* );

void main()
{
    char str[15];
    printf("Enter the string1:");
    scanf("\n %s",str);
    char str1[15];
    printf("Enter the string1:");
    scanf("\n %s",str1);
   char* ch= mystrcat(str,str1);
   printf("\n %s",ch);
}

char* mystrcat(char* ptr,char* ptr1)
{
    int i=0,j=0;
    while(ptr[i]!='\0')
    {
       i++; 
    }
    while(ptr1[j]!='\0')
    {
        ptr[i]=ptr1[j];
        i++;
       j++; 
    }
   return ptr;
}