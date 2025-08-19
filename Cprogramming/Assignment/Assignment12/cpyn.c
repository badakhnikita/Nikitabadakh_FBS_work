#include<stdio.h>
char* mystrncpy(char* ,char*,int );
void main()
{
    char str[6];
    printf("Enter the string:");
    scanf("%s",str);
    char temp[6];
    char* ch=mystrncpy(temp,str,3);
    printf("\n %s",ch);
}

char* mystrncpy(char* temp,char* ptr,int n)
{
    int i=0;
    while(i<n)
    {
        temp[i]=ptr[i];
        i++;
    }
    temp[i]='\0';
    return temp;
}