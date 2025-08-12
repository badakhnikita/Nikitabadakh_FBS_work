#include<stdio.h>
#include<math.h>
void prime(int*);
void main()
{
    int num;
    printf("enter the number");
    scanf("%d",&num);
    prime(&num);
}
void prime(int *num)
{
    int i=2,isprime=1;
    if(*num<=1)
        {
         isprime=0;
        }
        else{

      
    while(i<=sqrt(*num))
    {
         if(*num%i==0)
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