#include<stdio.h>
#include<string.h>
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    printf("%s",str);
    char temp[10];
    printf("\nEnter the string:");
    scanf("%s",temp);
    printf("%s",temp);
    int x=memcmp(temp,str,sizeof(str));
    printf("\n %d",x);
}//string memory manipulation function;