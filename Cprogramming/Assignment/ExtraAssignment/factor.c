#include<stdio.h>
void main()
{
    int num;
    printf("\n Enter the number:");
    scanf("%d",&num);
    int i=1;
    while(i<=num)
    {
        if(num%i==0)
        {
            printf("\n %d",i);
        }
        i++;
    }
}