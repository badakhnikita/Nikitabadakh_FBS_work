#include<stdio.h>
void storearray(int*,int);
void sortarray(int*,int);
  void  display(int*,int);
void main()
{
    int a[10];
    printf("Enter the element of array");
    storearray(a,10);
     printf("\n before sorting");
    display(a,10);
    sortarray(a,10);
     printf("\n after sorting");
    display(a,10);
}

void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}
void sortarray(int *ptr,int size)
{
    int temp;
    for(int i=0;i<size-1;i++)
    {
        for(int j=0;j<size-1-i;j++)
        {
            if(ptr[j]>ptr[j+1])
            {
               temp=ptr[j];
               ptr[j]=ptr[j+1];
               ptr[j+1]=temp;
            }
        }
    }
}

void display(int *ptr,int size)
{

    for(int i=0;i<size;i++)
    {
        printf("%d",ptr[i]);
    }
    
}
