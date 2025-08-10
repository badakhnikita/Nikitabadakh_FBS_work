#include<stdio.h>
#include<math.h>
int prime(int);
void main()
{ 
    int num;
    printf("enter the number");
    scanf("%d",&num);
   int r=prime(num);
   if(r==1)
   {
            printf("number is  prime");

   }
   else
   {
            printf("number is not prime");

   }
}
int prime(int num)
{
    int i=2,isprime=1;
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