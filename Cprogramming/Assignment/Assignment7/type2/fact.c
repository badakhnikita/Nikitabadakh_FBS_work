#include<stdio.h>
int fact();
void main()
{
    int r=fact();
    printf("%d",r);
}
int fact()
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
        return fact;
}