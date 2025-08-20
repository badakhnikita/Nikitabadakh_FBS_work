#include<stdio.h>
#include<string.h>
char* exchange(char*);
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
   char* ch= exchange(str);
   printf("%s",ch);
}

char* exchange(char* ptr)
{
    int i=0;
    char temp;
    int len=strlen(ptr);
   
        if( len>1)
        {
            temp=ptr[0];
            ptr[0]=ptr[len-1];
            ptr[len-1]=temp;
        }
    return ptr;
}