#include<stdio.h>
void main()
{
    int j=2,num;
    
   printf("enter the number ");
   scanf("%d",&num);
  
   for(int i=1;i<num;i++)
   {

    int isprime=1;
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