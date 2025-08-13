#include<stdio.h>
#include<math.h>
void main()
{
    int a[5];
    
     printf("Enter number in array");
    for(int i=0;i<5;i++)
    {
        scanf("%d",&a[i]);
    }
   
    for( int i=0;i<5;i++)
    {
        int isprime=1;
        if(a[i]<=1)
        {
            isprime=0;
        }
        else
        {
          int j=2;
           while(j<=sqrt(a[i]))
           {
            if(a[i]%j==0)
            {
                isprime=0;
                break;
            }
            j++;
           }
        }
        if(isprime)
    {
        printf("%d",a[i]);
    }
    }
    

}