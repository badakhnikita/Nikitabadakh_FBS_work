#include<stdio.h>
void check(char* ,char);
void main()
{
    char str[20];
    char ch;
    printf("\n Enter the string:");
    scanf("%s",str);
    printf("\n Enter the speacial character:");
    scanf(" %c",&ch);
    // int i=0;
    // while(str[i]!='\0')
    // {
    //     if(str[i]=='a')
    //     {
    //         str[i]=ch;
    //     }
    //     i++;
    // }
    // printf("\n %s",str);
check(str,ch);
}
void check(char* ptr,char ch)
{
  int i=0;
    while(ptr[i]!='\0')
    {
        if(ptr[i]==ch)
        {
            ptr[i]='#';
        }
        i++;
    }
    printf("\n %s",ptr);  
}