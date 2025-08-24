#include<stdio.h>
#include<stdlib.h>
void storearray(int* ,int );
int* search(int*,int ,int);
void main()
{
    int* a=(int*)malloc(sizeof(int)*10);
    printf("Enter the element of array");
    storearray(a,10);
    int n;
    printf("\n Enter the number which you want to search ");
    scanf("%d",&n);
    int* res=search( a,10,n);
    if(res==NULL)
    {
        printf("\n number is not found");
    }
    else
    {
        printf("\n number is  found %d",*res);
    }


}
void storearray(int *ptr,int size)
{
    for(int i=0;i<size;i++)
    {
        scanf("%d",&ptr[i]);
    }
}
int* search(int *ptr,int size,int e)
{
    for(int i=0;i<size;i++)
    {
    if(ptr[i]==e)
    {
        return &ptr[i];
    }
}
return NULL;
}