#include<stdio.h>
#include<stdlib.h>
void storearray(int*,int );
int* alter(int*,int,int*);
void display(int*,int);
void main()
{
    int a[10],newsize;
    printf("Enter the element of array");
    storearray(a,10);
    printf("array:");
   int* rev=alter(a,10,&newsize);
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
int* alter(int *ptr,int size,int* newsize)
{
      *newsize=(size+1)/2;
    int* temp=(int*)malloc(sizeof(int)*(*newsize));
    
    for(int i=0,j=0;i<size;i=i+2,j++)
    {
      temp[j]=ptr[i];
    }
    
    return temp;
}