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
         printf("\n %d",a[i]);

     } 
     printf("\n after reverse");
     for(int i=4;i>=0;i--)
     {
         printf("\n %d",a[i]);

     } 
    
}