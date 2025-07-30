#include<stdio.h>
void main()
{
    int first,last,sum=0,num;
    printf("Enter the number");
    scanf("%d",&num);
    last=num%10;
    while(num>=10)
    {
        num=num/10;
        
    }
    first=num;
    sum=first+last;
    printf("%d",sum);
}