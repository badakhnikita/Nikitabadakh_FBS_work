#include<stdio.h>
 void storearray(int*,int);
void mergearray(int*,int ,int*,int );
void main()
{
    int a[10],b[10];
    printf("Enter the element of array");
    storearray(a,10);
    printf("\n Enter the element of array");
    storearray(b,10);
    mergearray(a,10,b,10);
}
 void storearray(int *ptr,int size)
 {
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
 }

 void mergearray(int *ptr,int size1,int *ptr1,int size2)
 {
    int i,merge[size1+size2];
    for(i=0;i<size1;i++)
    {
        merge[i]=ptr[i];
    }
    for(int j=0;j<size2;j++)
    {
        merge[i++]=ptr1[j];
    }
    for(int j=0;j<(size1+size2);j++)
    {
       printf("%d ", merge[j]);
    }
 }