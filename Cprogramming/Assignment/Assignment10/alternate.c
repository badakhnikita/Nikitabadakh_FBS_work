#include<stdio.h>
void storearray(int*,int );
void alter(int*,int );
void main()
{
    int a[10];
    printf("Enter the element of array");
    storearray(a,10);
    printf("array:");
    alter(a,10);
}

void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}
void alter(int *ptr,int size)
{
    for(int i=0;i<size;i=i+2)
    {
        printf("%d",ptr[i]);
    }
}