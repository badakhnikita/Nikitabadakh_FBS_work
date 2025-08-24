#include<stdio.h>
#include<stdlib.h>
void storearray(int*,int);
int* even(int*,int,int*);
int* odd(int*,int,int*);
void display(int*,int);
void main()
{
    int a[10],count=0,count1=0;
    printf("Enter the element of array");
    storearray(a,10);
    int* rev=even(a,10,&count);
    printf("\n even number");
    display(rev,count);
    int* rev1=odd(a,10,&count1);
    printf("\n odd number");
    display(rev1,count1);
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

int* even(int *ptr,int size,int *count)
{
    *count=0;
    for(int i=0;i<size;i++)
    {
        if(ptr[i]%2==0)
        {
            (*count)++;
        } 
    }
    int* even=(int*)malloc(sizeof(int)*(*count));
    int j=0;
    for(int i=0;i<size;i++)
    {
        if(ptr[i]%2==0)
        {
          even[j++]=ptr[i]; 
        }
      
    }
    return even;
}

int* odd(int *ptr,int size,int* count1)
{
   *count1=0;
    for(int i=0;i<size;i++)
    {
        if(ptr[i]%2!=0)
        {
           (*count1)++;
        } 
    }
     int* odd=(int*)malloc(sizeof(int)*(*count1));
    int j=0;
    for(int i=0;i<size;i++)
    {
        if(ptr[i]%2!=0)
        {
          odd[j++]=ptr[i]; 
        }
       
    }
    return odd;
}