#include<stdio.h>
#include<stdlib.h>
void storearray(int*,int );
int* maximum(int*,int  );
int* minimum(int* ,int );
void main()
{
    int a[10];
    printf("Enter the element of array ");
    storearray(a,10);
    int* m1=maximum(a,10);
    printf("\n %d",*m1);
    int* m2=minimum(a,10);
     printf("\n %d",*m2);

}
void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}
int* maximum(int *ptr,int size)
{
    int* max=(int*)malloc(sizeof(int)*size);
    *max=ptr[0];
for(int i=0;i<size;i++)
{
    if(ptr[i]>*max)
    {
        *max=ptr[i];
    }
}
return max;
}
int* minimum(int *ptr,int size)
{
    int* min=(int*)malloc(sizeof(int)*size);
    *min=ptr[0];
for(int i=0;i<size;i++)
{
    if(ptr[i]<*min)
    {
        *min=ptr[i];
    }
}
return min;
}