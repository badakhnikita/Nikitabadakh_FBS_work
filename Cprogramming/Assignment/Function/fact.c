#include<stdio.h>
void fact();
void main()
{
    fact();
}
void fact()
{
    int num,fact=1;
    printf("enter the num");
    scanf("%d",&num);
    int i=1;
    while(i<=num)
    {
        fact=fact*i;
        i++;
    }
    printf("factorial %d",fact);
}