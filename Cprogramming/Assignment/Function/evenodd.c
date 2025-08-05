#include<stdio.h>
void evenodd();
void main()
{
    evenodd();
}
void evenodd()
{
    int num;
    printf("enter the number");
    scanf("%d",&num);
    if(num%2==0)
    {
        printf("number is even");
    }
    else
    {
        printf("number is odd");
    }
}