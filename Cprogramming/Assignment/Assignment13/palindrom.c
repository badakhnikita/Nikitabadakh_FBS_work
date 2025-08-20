#include<stdio.h>
#include<string.h>
char* checkpalindrom(char*);
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
   char* ch=checkpalindrom(str);
   if(str==ch)
   {
    printf("\n String is palindrom");
   }
   else
   {
    printf("\n string is not palindrom");
   }
}

char* checkpalindrom(char* ptr)
{
   int len=strlen(ptr);
    int i=0,j=len-1;
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