#include<stdio.h>
#include<string.h>
void main()
{
    char str[10];
    printf("Enter the string:");
    scanf("%s",str);
    printf("%s",str);
    printf("\n After copying string");
    char temp[10];
    printf("\n %s",memcpy(temp,str,3));
}//string memory manipulation function;