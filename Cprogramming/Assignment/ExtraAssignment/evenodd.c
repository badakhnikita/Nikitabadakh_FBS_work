#include<stdio.h>
void main()
{
   int n;
   printf("\n Enter the number:");
   scanf("%d",&n);
   for(int i=1;i<=n;i++)
   {
    if(i%2==0)
    {
        printf("-%d ",i);
    }
    else
    {
        printf("%d ",i);
    }
   } 
}