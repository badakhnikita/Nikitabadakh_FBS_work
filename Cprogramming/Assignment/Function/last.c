#include<stdio.h>
void sum();
void main()
{
    sum();
}
void sum()
{
    int num,sum=0;
    printf("enter the number");
    scanf("%d",&num);
    int last,first,temp;
    temp=num;
    last=temp%10;
    
    while(temp>=10)
    {
        temp=temp/10;
    }
    first=temp;
    sum=first+last;
    printf("sum of first and last digit %d",sum);
}