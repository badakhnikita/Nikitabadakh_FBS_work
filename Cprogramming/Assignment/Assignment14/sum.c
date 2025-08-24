#include<stdio.h>
#include<stdlib.h>
void storearray(int*,int);
int calculate(int*,int );

void main()
{
    int* a=(int*)malloc(sizeof(int)*10);
    printf("enter the element of array");
    storearray(a,10);
    int x=calculate(a,10);
    printf("\n sum:%d",x);
}
void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}

int calculate(int *ptr,int size)
{
    int sum=0;
    for(int i=0;i<size;i++)
    {
        sum=sum+ptr[i];
    
    }
    return sum;

}