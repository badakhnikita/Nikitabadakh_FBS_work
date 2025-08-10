#include<stdio.h>
void check1(int);
void main()
{
  int num;
  printf("enter the number");
    scanf("%d",&num);
  check1(num);
}
void check1(int num)
{
    int sum=0;
    int i=1;
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