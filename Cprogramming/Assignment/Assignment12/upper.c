#include<stdio.h>
char* mystrupper(char*);
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    char* ch=mystrupper(str);
    printf("%s",ch);
}

char* mystrupper(char* ptr)
{
    int i=0;
    while(ptr[i]!='\0')
    { 
        if(ptr[i]>='a' && ptr[i]<='z')
        {
            ptr[i]=ptr[i]-32;
        }
        i++;
    }
    return ptr;
}