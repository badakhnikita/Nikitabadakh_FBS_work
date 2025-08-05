#include<stdio.h>
#include<math.h>
void prime();
void main()
{
    prime();
}
void prime()
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
        printf("number is  prime");

    }
    else
    {
        printf("number is not prime");
    }
}