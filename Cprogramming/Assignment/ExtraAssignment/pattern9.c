#include<stdio.h>
void main()
{
    int n;
    printf("\n Enter the number:");
    scanf("%d",&n);

    for(int i=1;i<=n;i++)
    {
        for(int k=1;k<=n-i;k++)
        {
            printf(" ");
        }
        for(int j=i;j>=1;j--)
        {
            printf(" %d",j);
        }
        for(int j=2;j<=i;j++)
        {
           printf(" %d",j);
        }
        printf("\n");
    }
}