#include<stdio.h>
int mystrchr(char*,char);
void main()
{
    char str[20];
    printf("Enter the string:");
    scanf("%s",str);
    char ch;
    printf("\n Enter the character which you want to found");
    scanf(" %c",&ch);
    int res=mystrchr(str,ch);
    if(res==-1)
    {
        printf("\n character not found");
    }
    else
    {
        printf("\n character found at %d",res);
    }
}

int mystrchr(char* ptr,char ch)
{
    int i=0;
    while(ptr[i]!='\0')
    {
        if(ptr[i]==ch)
        {
            return i;
        }
        i++;
    }
    return -1;
}