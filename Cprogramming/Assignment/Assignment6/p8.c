#include<stdio.h>
void main()
{
    int n;
    printf("enter the number");
    scanf("%d",&n);
   
    for(int i=1;i<=n;i++)
    {
        for(int k=1;k<=n-i;k++)
        {
            printf(" ");
        }
        for(int j=1;j<=i;j++)
        {
          
            printf("* ");
         
        }
        printf("\n");
    }
    for(int i=1;i<=n;i++)
    {
        for(int k=1;k<=i;k++)
        {
            printf(" ");
        }
        for(int j=n;j>i;j--)
        {
            printf("* ");
        }
        printf("\n");
    }
}