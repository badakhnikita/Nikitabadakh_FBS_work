#include<stdio.h>
#include<math.h>
void main()
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