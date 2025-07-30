#include<stdio.h>
void main()
{
    int num,sum=0;
    int i=1;
    printf("enter the number");
    scanf("%d",&num);
    int no=num;
    
    while(i<num)
    {
        if(num%i==0)
        {
          sum=sum+i;
        }
        i++;
    }
    printf("%d",sum);
    if(sum==no)
    {
        printf("numbrer is perfect");
    }
    else
    {
        printf("number is not perfect");
    }


}