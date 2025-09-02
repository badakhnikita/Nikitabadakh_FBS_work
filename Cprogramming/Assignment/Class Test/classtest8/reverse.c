#include<stdio.h>
#include<string.h>
char* reverse(char*);
void main()
    {
        char str[20];
        printf("\n enter the string:");
        scanf("\n %s",str);
        char* ch=reverse(str);
        printf("\n %s",ch);
    }
char* reverse(char* ptr)
{
    int len=strlen(ptr);
    int i=0;
    int j=len-1;
    char temp;
    while(i<j)
    {
   temp=ptr[i];
    ptr[i]=ptr[j];
    ptr[j]=temp;
    i++;
    j--;
}
return ptr;
}