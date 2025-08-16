#include<stdio.h>
void storearray(int*,int );
void reversearray(int*,int );
void main()
{
    int a[10];
    printf("Enter the element of array");
    storearray(a,10);
    reversearray(a,10);
}

void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}

void reversearray(int *ptr,int size)
{
    for(int i=size-1;i>=0;i--)
    {
        printf("%d ",ptr[i]);
    }
}














