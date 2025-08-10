#include<stdio.h>
void fact(int);
void main()
{
        int num;
    printf("enter the num");
    scanf("%d",&num);
    fact(num);
}
void fact(int num)
{
    int fact=1;
    int i=1;
    while(i<=num)
    {
        fact=fact*i;
        i++;
    }
    printf("factorial %d",fact);
}