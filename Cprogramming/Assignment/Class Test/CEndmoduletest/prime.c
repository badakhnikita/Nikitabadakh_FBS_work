#include<stdio.h>
void main()
{
    int n,sum=0;
    printf("\n Enter the number:");
    scanf("%d",&n);
    for(int i=2;i<n;i++)
    {
        int isprime=1;
        if(i<=1)
        {
            isprime=0;
        }
        else
        {   
           int  j=2;
            while(j<=(i/2))
            {
             if(i%j==0)
             {
                isprime=0;
                break;
             }
             j++;
            }
            if(isprime)
            {
                
                printf("\n %d",i);
                sum=sum+i;
            }

        }
    }
    printf("\nsum of prime number: %d",sum);
}