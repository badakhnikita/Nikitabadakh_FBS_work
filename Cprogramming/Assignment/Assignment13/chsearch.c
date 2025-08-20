#include<stdio.h>
int charsearch(char*,char);
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    char ch1;
    printf("\n Enter the character you want to search");
    scanf(" %c",&ch1);
    int x=charsearch(str,ch1);
    if(x==-1)
    {
        printf("Character not found");
    }
    else{
        printf("\n character found at %d index",x);
    }
}

int charsearch(char* ptr,char ch1)
{
    int i=0;
    while(ptr[i]!='\0')
    {
        if(ptr[i]==ch1)
        return i;
        i++;
    }
    return -1;
}