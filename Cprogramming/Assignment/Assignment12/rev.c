#include<stdio.h>
#include<string.h>
char* mystrrev(char*);
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    char* ch=mystrrev(str);
    printf("%s",ch);
}

char* mystrrev(char* ptr)
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
