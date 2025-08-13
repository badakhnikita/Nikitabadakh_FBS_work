#include<stdio.h>
void main()
{
    int a[5];
    int arr[5];
    int brr[5];
     printf("Enter number in array1");
    for(int i=0;i<5;i++)
    {
        scanf("%d",&a[i]);
    }
    //Find the maximum element from array;
    int max=a[0];
    for(int i=0;i<5;i++)
    {
        if(a[i]>max)
        {
           max=a[i];
        }
    }
     printf("\n maximum number in array %d",max);  

    //Find the minimum element from array;

     int min=a[0];
    for(int i=0;i<5;i++)
    {
        if(a[i]<min)
        {
           min=a[i];
        }
    }
     printf("\n minimum number in array %d",min); 
    
    

}