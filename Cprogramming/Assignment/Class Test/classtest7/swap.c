#include<stdio.h>
void storearray(int*r,int );
void display(int* ,int );
void exchange(int* ,int );
void main()
{
    int a[10];
    printf("\n enter the element of array");
    storearray(a,10);
    display(a,10);
    exchange(a,10);
}

void storearray(int* ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("\n %d",&ptr[i]);
    }
}
void display(int* ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        printf("\n %d",ptr[i]);
    }
}
void exchange(int* ptr,int size)
{
    int pos,pos1;
    printf("\n Enter the index number1 ");
    scanf("\n %d %d",&pos,&pos1);
    if(pos>=0 && pos<size && pos1>=0 && pos1<size)
    {
        int temp=ptr[pos];
        ptr[pos]=ptr[pos1];
        ptr[pos1]=temp;
    }
    printf("After swapping");
    for(int i=0;i<size;i++)
    {
        printf("\n %d",ptr[i]);
    }
}