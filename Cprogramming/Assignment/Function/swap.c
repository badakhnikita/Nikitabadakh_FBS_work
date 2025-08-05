#include<stdio.h>
void swap();
void main()
{
    swap();
}
void swap()
{
    int a,b,c;
    printf("enter the value of a and b");
    scanf("%d %d",&a,&b);
    printf("\n Before swapping no %d %d",a,b);
    c=a;
    a=b;
    b=c;
    printf("\n After swapping no %d %d",a,b);
}