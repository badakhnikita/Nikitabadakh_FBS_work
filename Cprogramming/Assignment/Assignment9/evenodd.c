#include<stdio.h>
void main()
{
    int a[5];
    
     printf("Enter number in array");
    for(int i=0;i<5;i++)
    {
        scanf("%d",&a[i]);
    }
    for(int i=0;i<5;i++)
    {
        if(a[i]%2==0)
        {
            printf("\n even number %d",a[i]);
        }
        else
        {
            printf("\n odd number %d",a[i]);
        }
    }

}