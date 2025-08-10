#include<stdio.h>
#include<math.h>
int prime();
void main()
{
   int r=prime();
   if(r==1)
   {
            printf("number is  prime");

   }
   else
   {
            printf("number is not prime");

   }
}
int prime()
{
    int i=2,num,isprime=1;
    printf("enter the number");
    scanf("%d",&num);
    if(num<=1)
        {
         isprime=0;
        }
        else{

      
    while(i<=sqrt(num))
    {
         if(num%i==0)
            {
                isprime=0;
                break;
            }
            

        i++;
    }
}
    if(isprime)
    {
       return 1;
    }
    else
    {
        return 0;
    }
}