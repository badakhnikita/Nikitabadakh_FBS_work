#include<stdio.h>
void main()
{
    int arr[5];
    printf("Enter the element");
    for(int i=0;i<5;i++)
    {
        scanf("%d",&arr[i]);
    }
    int s,flag=0;
    printf("enter the number that you want search");
    scanf("%d",&s);
    for(int i=0;i<5;i++)
    {
        if(s==arr[i])
        {
            printf("\n number is found");
            flag=1;
            break;
        }
    }
    if(flag==0)
    {
        printf("\n number not found");
    }

}