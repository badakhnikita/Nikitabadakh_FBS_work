#include<stdio.h>
void main()
{
   int n,num=1;
   printf("\n Enter the number:");
   scanf("%d",&n);
   for(int i=1;i<=n;i++)
   {
    if(i%2==0)
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