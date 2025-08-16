#include<stdio.h>
void storearray(int*,int);
void evenodd(int*,int);
void main()
{
    int a[10];
    printf("Enter the element of array");
    storearray(a,10);
    evenodd(a,10);
}
void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}

void evenodd(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        if(ptr[i]%2==0)
        {
            printf("\n even number:%d",ptr[i]);
        }
        else
        {
            printf("\n odd number:%d",ptr[i]);
        }
    }
}