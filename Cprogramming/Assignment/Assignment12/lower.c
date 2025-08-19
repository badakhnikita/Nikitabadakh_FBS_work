#include<stdio.h>
char* mystrlower(char*);
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    char* ch=mystrlower(str);
    printf("%s",ch);
}

char* mystrlower(char* ptr)
{
    int i=0;
    while(ptr[i]!='\0')
    { 
        if(ptr[i]>='A' && ptr[i]<='Z')
        {
            ptr[i]=ptr[i]+32;
        }
        i++;
    }
    return ptr;
}