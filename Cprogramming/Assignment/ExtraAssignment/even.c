#include<stdio.h>
void main()
{
   int n,num=2;
   printf("\n Enter the number:");
   scanf("%d",&n);
   for(int i=1;i<=n;i++)
   {
    if(i%3==0)
    {
        printf("-%d ",num);
    }
    else
    {
     printf("%d ",num);
    }
    num+=2;
   } 
}