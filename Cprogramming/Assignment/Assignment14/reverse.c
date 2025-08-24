#include<stdio.h>
#include<stdlib.h>
void storearray(int*,int );
int* reversearray(int*,int );
void display(int*,int );
void main()
{
    int a[10];
    printf("Enter the element of array");
    storearray(a,10);
   int* rev=reversearray(a,10);
   display(rev,10);
}

void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}

void display(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        printf("%d",ptr[i]);
    }
}
int* reversearray(int *ptr,int size)
{
    int* temp=(int*)malloc(sizeof(int)*size);
    for(int j=0,i=size-1;j>size,i>=0;j++,i--)
    {
        temp[i]=ptr[j];
       
    }
    return temp;
}














