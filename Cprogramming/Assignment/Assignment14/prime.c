#include<stdio.h>
#include<math.h>
#include<stdlib.h>
void storearray(int*,int );
void checkprime(int*,int );

void main()
{
    int* a=(int*)malloc(sizeof(int)*10);
    printf("Enter the element of array");
    storearray(a,10);
    printf("\n prime number:");
    checkprime(a,10);
}

void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}

void checkprime(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        int isprime=1;
        if(ptr[i]<=1)
        {
           isprime=0;
        }
        else
        {
            int j=2;
            while(j<=sqrt(ptr[i]))
            {
                if(ptr[i]%j==0)
                {
                    isprime=0;
                    break;
                }
                j++;
            }
        }
        if(isprime)
        {
            printf("%d",ptr[i]);
        }
    }
}