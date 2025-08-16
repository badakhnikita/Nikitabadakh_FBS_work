#include<stdio.h>
void storearray(int*,int);
void calculate(int*,int );
void main()
{
    int a[10];
    printf("enter the element of array");
    storearray(a,10);
    calculate(a,10);

}
void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}
void calculate(int *ptr,int size)
{
    int sum=0;
    for(int i=0;i<size;i++)
    {
        sum=sum+ptr[i];
    
    }
    printf("\n sum of number:%d",sum);

}