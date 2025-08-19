#include<stdio.h>
char* mystrcpy(char* ,char* );
void main()
{
    char str[6];
    printf("Enter the string:");
    scanf("%s",str);
    char temp[6];
    char* ch=mystrcpy(temp,str);
    printf("\n %s",ch);
}

char* mystrcpy(char* temp,char* ptr)
{
    int i=0;
    while(ptr[i]!='\0')
    {
        temp[i]=ptr[i];
        i++;
    }
    temp[i]='\0';
    return temp;
}