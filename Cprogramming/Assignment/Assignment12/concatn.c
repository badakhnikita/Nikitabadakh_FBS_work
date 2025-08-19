#include<stdio.h>
#include<string.h>
char* mystrncat(char* ,char*,int );

void main()
{
    char str[15];
    printf("Enter the string1:");
    scanf("\n %s",str);
    char str1[15];
    printf("Enter the string1:");
    scanf("\n %s",str1);
   char* ch= mystrncat(str,str1,3);
   printf("\n %s",ch);
}

char* mystrncat(char* ptr,char* ptr1,int n)
{
    int i=0,j=0;
    while(ptr[i]!='\0')
    {
       i++; 
    }
    while(j<n)
    {
        ptr[i]=ptr1[j];
        i++;
       j++; 
    }
   return ptr;
}