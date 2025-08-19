#include<stdio.h>
int mystrlen(char* ptr);
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    int x=mystrlen(str);
    printf("\n %d",x);
}

int mystrlen(char* ptr)
{
     int i=0,count=0;
    while(ptr[i]!='\0')
    {
        // count++;
        i++;
    }
    return i;
}