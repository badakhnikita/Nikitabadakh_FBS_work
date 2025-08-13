#include<stdio.h>
int calculate(int,int);
void main()
{
    int cprice,discount=100;
    printf("Enter the cost price");
    scanf("%d",&cprice);
   int res=calculate(cprice,discount);
    printf(" \nselling price:%d",res);


}
int calculate(int cprice,int discount)
{
    int sprice;
    sprice=cprice-discount;
   return sprice;
}