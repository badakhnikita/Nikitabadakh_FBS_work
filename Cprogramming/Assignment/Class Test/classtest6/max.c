#include<stdio.h>
void storearray(int* ,int );
void max(int* ,int );
void main()
{
    int arr[5];
    int brr[5];
    printf("Enter the element");
    storearray(arr,5);
    max(arr,5);
}

void storearray(int* ptr,int n)
{
    for(int i=0;i<n;i++)
    {
        scanf("%d",&ptr[i]);
    }
}

void max(int* ptr,int n)
{
    int max=ptr[0],secondmax=ptr[0];
    for(int i=0;i<n;i++)
    {
        if(ptr[i]>max)
        {
        secondmax=max;
        max=ptr[i];
        }
        else if(ptr[i]>secondmax && ptr[i]!=max)
        {
            secondmax=ptr[i];
        }
    }
    printf("%d",max);

     printf("%d",secondmax);
}
