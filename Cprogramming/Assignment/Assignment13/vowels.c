#include<stdio.h>
int countv(char*);
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    int x=countv(str);
    printf("%d",x);
}

int countv(char* ptr)
{
    int i=0,count=0;
    while(ptr[i]!='\0')
    {
        if(ptr[i]=='a'|| ptr[i]=='e' || ptr[i]=='i'|| ptr[i]=='o'|| ptr[i]=='u')
        {
            count++;
        }
        i++;
    }
    return count;
}