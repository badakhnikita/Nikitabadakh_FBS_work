#include<stdio.h>
void main()
{
    int a,b,c;
    a=20;
    b=10;
    printf("Before swapping no %d %d",a,b);
    c=a;
    a=b;
    b=c;
    printf("After swapping no %d %d",a,b);
}