#include<stdio.h>
void check();
void main()
{
    check();
}
void check()
{
    int num;
    
   printf("enter the number ");
   scanf("%d",&num);
  
   for(int i=2;i<num;i++)
   {

    int isprime=1,j=2;
   if(i<=1)
   {
    isprime=0;
   }
   else
   {
    while(j<=i/2)
    {
        if(i%j==0)
        {
            isprime=0;
            break;
        }
        j++;
    }

   }
   if(isprime)
   {
    printf("\n %d",i);
   }
}
}