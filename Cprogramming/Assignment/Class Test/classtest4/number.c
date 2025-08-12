#include<stdio.h>
void main()
{
    for(int i=10;i<=15;i++)
    {
        for(int j=1;j<=i;j++)
        {
            if(i%j==0)
            printf("\n divisor of %d is %d ",i,j);
        }
    }
}