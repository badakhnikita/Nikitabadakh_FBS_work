#include<stdio.h>
#include<string.h>
int mystrrchr(char*,char);
void main()
{
    char str[20];
    printf("Enter the string:");
    scanf("%s",str);
    char ch;
    printf("\n Enter the character which you want to found");
    scanf(" %c",&ch);
    int res=mystrrchr(str,ch);
    if(res==-1)
    {
        printf("\n character not found");
    }
    else
    {
        printf("\n character found at %d",res);
    }
}

int mystrrchr(char* ptr,char ch)
{
    int len=strlen(ptr);
    int i=len-1;
    while(i>=0)
    {
        if(ptr[i]==ch)
        {
            return i;
        }
        i--;
    }
    return -1;
}