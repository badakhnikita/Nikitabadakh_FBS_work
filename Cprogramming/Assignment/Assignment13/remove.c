#include<stdio.h>
char* removei(char* ,int );
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    int n;
    printf("\n Enter the number of index which you want to remove");
    scanf("%d",&n);
    char* ch=removei(str,n);
    printf("%s",ch);
}

char* removei(char* ptr,int n)
{
    int i=n;
    while(ptr[i]!='\0')
    {
        ptr[i]=ptr[i+1];
        i++;
    }
    return ptr;
}