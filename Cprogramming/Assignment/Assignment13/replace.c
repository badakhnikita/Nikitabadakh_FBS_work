#include<stdio.h>
char* replace(char* ,char );
void main()
{
    char str[10];
    printf("Enter the string");
    scanf("%s",str);
    char ch='$';
    char* ch1=replace(str,ch);
    printf("%s",ch1);
}
char* replace(char* ptr,char ch)
{
    int i=0;
    while(ptr[i]!='\0')
    {
        if(ptr[i]=='a')
        {
            ptr[i]=ch;
        }
        i++;
    }
    return ptr;
}