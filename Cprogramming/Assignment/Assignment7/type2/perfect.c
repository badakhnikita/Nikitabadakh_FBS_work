#include<stdio.h>
int check1();
void main()
{
  int c=check1();
  if(c==1)
  {
     printf("numbrer is perfect");
    }
    else{
       printf("numbrer is not perfect");
    }
    }



int check1()
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
      return 1;
    }
    else
    {
      return 0;
    }
}