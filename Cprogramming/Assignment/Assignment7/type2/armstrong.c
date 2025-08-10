#include<stdio.h>
int check();
void main()
{
   if(check())
   {
     printf("Number is Armstrong");
   }
   else
   {
     printf("Number is not  Armstrong");
   }
}
int check()
{
     int sum=0;
    int r1,no,num;
    printf("Enter the number");
    scanf("%d",&no);
    num=no;
    while(no!=0)
    {
        r1=no%10;
        sum=sum+r1*r1*r1;
        no=no/10;
    }
    printf("%d",sum);
    if(sum==num)
    {
       return 1;
    }
    else
    {
       return 0;
    }
}