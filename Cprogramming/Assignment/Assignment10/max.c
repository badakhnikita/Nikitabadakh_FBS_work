#include<stdio.h>
void storearray(int*,int );
void maximum(int*,int ,int );
void minimum(int* ,int ,int );
void main()
{
    int a[10];
    printf("Enter the element of array ");
    storearray(a,10);
    int max=a[0];
    maximum(a,10,max);
    int min=a[0];
    minimum(a,10,min);

}
void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}
void maximum(int *ptr,int size,int m)
{
for(int i=0;i<size;i++)
{
    if(ptr[i]>m)
    {
        m=ptr[i];
    }
}
printf("maximum number:%d",m);
}
void minimum(int *ptr,int size,int m)
{
for(int i=0;i<size;i++)
{
    if(ptr[i]<m)
    {
        m=ptr[i];
    }
}
printf("minimum number:%d",m);
}