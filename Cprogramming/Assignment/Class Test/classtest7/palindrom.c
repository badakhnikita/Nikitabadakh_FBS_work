#include<stdio.h>

void storearray(int*r,int );
void display(int* ,int );
int check(int* ,int );
void main()
{
    int a[10];
    printf("\n enter the element of array");
    storearray(a,10);
    display(a,10);
    if(check(a,10))
    {
        printf("array is palindrom");
    }
    else{
        printf("array is not palindrom");
    }
  

}

void storearray(int* ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}
void display(int* ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        printf("\n %d",ptr[i]);
    }
}
int check(int* ptr,int size)
{

    for(int j=0,i=size-1;j<i;j++,i--)
    {
      if(ptr[j]!=ptr[i])
      return 0;
    }
    return 1;
}