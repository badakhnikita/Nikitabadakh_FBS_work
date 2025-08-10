#include<stdio.h>
int fact(int);
void main()
{
    int num;
    printf("enter the num");
    scanf("%d",&num);
    int r=fact(num);
    printf("%d",r);
}
int fact(int num)
{
    int fact=1;
    int i=1;
    while(i<=num)
    {
        fact=fact*i;
        i++;
    }
        return fact;
}