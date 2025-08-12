#include<stdio.h>
void swap(int*,int*);
void main()
{
    int a,b;
    printf("enter the value of a and b");
    scanf("%d %d",&a,&b);
    printf("\n Before swapping no %d %d",a,b);
    swap(&a,&b);
}
void swap(int* x,int* y)
{
    int c;
    c=*x;
   *x=*y;
    *y=c;
    printf("\n After swapping no %d %d",*x,*y);
}