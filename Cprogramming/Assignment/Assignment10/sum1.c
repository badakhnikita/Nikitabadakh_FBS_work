#include<stdio.h>
void storearray(int*,int );
void sum(int*,int*,int );
void main()
{
    int a[10],b[10];
    printf("Enter the element of array1");
    storearray(a,10);
    printf("Enter the element of array2");
    storearray(b,10);
    sum(a,b,10);
}

void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}

void sum(int *ptr,int *ptr1,int size)
{
    int c[10];
    for(int i=0;i<size;i++)
    {
     c[i]=ptr[i]+ptr1[i];
    printf("%d ",c[i]);
   
    }
  
}