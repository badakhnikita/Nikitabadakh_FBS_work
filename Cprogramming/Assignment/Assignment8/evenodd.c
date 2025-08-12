#include<stdio.h>
void evenodd(int*);
void main()
{
    int num;
    printf("enter the number");
    scanf("%d",&num);
    evenodd(&num);
}
void evenodd(int *num1)
{
    
    if(*num1%2==0)
    {
        printf("number is even");
    }
    else
    {
        printf("number is odd");
    }
}