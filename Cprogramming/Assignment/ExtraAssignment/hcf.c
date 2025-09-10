#include<stdio.h>
void main()
{
    int n1,n2;
    printf("\n Enter the numbers:");
    scanf("%d %d",&n1,&n2);
    int temp;
   int a=n1;
   int b=n2;
    while(n2!=0)
{
    temp=n2;
    n2=n1%n2;
    n1=temp;
}
printf("\n HCF:%d",n1);
int lcm=(a*b)/n1;
printf("\n LCM:%d",lcm);
}