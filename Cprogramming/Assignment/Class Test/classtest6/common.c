#include<stdio.h>
void storearray(int* ,int );
void finda(int*,int ,int* ,int );
void main()
{
    int arr[5];
    int brr[5];
    printf("Enter the element");
    storearray(arr,5);
    printf("Enter the element");
     storearray(brr,5);
    finda(arr,5,brr,5);
}

void storearray(int* ptr,int n)
{
    for(int i=0;i<n;i++)
    {
        scanf("%d",&ptr[i]);
    }
}

void finda(int* ptr,int n,int* ptr1,int n1)
{
    
    for(int i=0;i<n;i++)
    {
        for(int j=0;j<n1;j++)
        {
        if(ptr[i]==ptr1[j])
        {
          printf("%d",ptr[i]);  
        }
        
    }
    }
}