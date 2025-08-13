#include<stdio.h>
void main()
{
    int a[5];
    
     printf("Enter number in array");
    for(int i=0;i<5;i++)
    {
        scanf("%d",&a[i]);
    }
    printf("\n before sorting");
     for(int i=0;i<5;i++)
     {
         printf("\n %d",a[i]);

     } 

     int temp;
     for(int i=0;i<5;i++)
     {
        for(int j=i+1;j<5;j++)
         {
            if(a[i]>a[j])
            {
            temp=a[i];
            a[i]=a[j];
            a[j]=temp;
            }
         }
        } 
        printf("\n after sorting");
    for(int i=0;i<5;i++)
     {
         printf("\n %d",a[i]);

     } 
}