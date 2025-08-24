#include<stdio.h>
#include<stdlib.h>
 void storearray(int*,int);
int* mergearray(int*,int ,int*,int,int* );
 void display(int*,int);

void main()
{
    int a[10],b[10],newsize;
    printf("Enter the element of array");
    storearray(a,10);
    printf("\n Enter the element of array");
    storearray(b,10);
     int* rev=mergearray(a,10,b,10,&newsize);
     display(rev,newsize);
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

 int* mergearray(int *ptr,int size1,int *ptr1,int size2,int* newsize)
 {
    *newsize=size1+size2;
    int* merge=(int*)malloc(sizeof(int)*(*newsize));
    int i;
    for(i=0;i<size1;i++)
    {
        merge[i]=ptr[i];
    }
    for(int j=0;j<size2;j++)
    {
        merge[i++]=ptr1[j];
    }
   return merge;
 }