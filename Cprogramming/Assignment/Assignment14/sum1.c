#include<stdio.h>
#include<stdlib.h>
void storearray(int*,int );
int* sum(int*,int*,int );
void display(int*,int );
void main()
{
    int* a=(int*)malloc(sizeof(int)*10);
    int* b=(int*)malloc(sizeof(int)*10);
    printf("Enter the element of array1");
    storearray(a,10);
    printf("Enter the element of array2");
    storearray(b,10);
   int* x= sum(a,b,10);
   display(x,10);
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

 int* sum(int *ptr,int *ptr1,int size)
{
   int* c=(int*)malloc(sizeof(int)*10);
    for(int i=0;i<size;i++)
    {
     c[i]=ptr[i]+ptr1[i];
    
    }
    return c;
  
}