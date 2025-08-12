#include<stdio.h>
void getsum(int*);
void main()
{
    int num;
    printf("enter the number");
    scanf("%d",&num);
    getsum(&num);
}
void getsum(int *a)
{
    int sum=0;
    int last,first,temp;
    temp=*a;
    last=temp%10;
    
    while(temp>=10)
    {
        temp=temp/10;
    }
    first=temp;
    sum=first+last;
    printf("sum of first and last digit %d",sum);
}