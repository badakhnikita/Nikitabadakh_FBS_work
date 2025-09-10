#include<stdio.h>
void main()
{
    int num;
    printf("\n Enter the number");
    scanf("%d",&num);
    int i=1,n;
    while(i<=num)
    {
    n=i*i;
    printf("\n %d",n);
    i++;
    }
}