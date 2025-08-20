#include<stdio.h>
char* removei(char*);
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    char* ch=removei(str);
    printf("%s",ch);
}

char* removei(char* ptr)
{
    int i=0,j=0;
    while(ptr[i]!='\0')
    {
        if(i%2==0)
        {
            ptr[j++]=ptr[i];
        }
        i++;
    }
    ptr[j]='\0';
    return ptr;
}