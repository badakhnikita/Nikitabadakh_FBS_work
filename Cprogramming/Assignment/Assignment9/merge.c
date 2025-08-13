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
    printf("Enter number in array2");
    for(int i=0;i<5;i++)
    {
        scanf("%d",&arr[i]);
    }
    for(int i=0;i<5;i++)
    {
     brr[i]=a[i];
    }
     for(int i=0;i<5;i++)
    {
     brr[i+5]=arr[i];
    }
    for(int i=0;i<10;i++)
    {
    printf("%d",brr[i]);
    }
}