#include<stdio.h>
void main()
{
    int a[5];
    
     printf("Enter number in array");
    for(int i=0;i<5;i++)
    {
        scanf("%d",&a[i]);
    }
   
    
    //Sum of element of array;

     int sum=0;
     for(int i=0;i<5;i++)
     {
        sum=sum+a[i];
     } 
     printf("\n sum :%d",sum);

}