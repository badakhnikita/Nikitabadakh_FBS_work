#include<stdio.h>
void main()
{
    int n;
    printf("\n Enter the number:");
    scanf("%d",&n);
    int count=1;
    char count1='A';
    for(int i=1;i<=n;i++)
    {
        for(int j=1;j<=n;j++)
        {
            if(i==1 || i==3)
            {
            printf("%d ",count++);
            }
            else
            {
               printf("%c ",count1++);  
            }
        }
        printf("\n");
    }
}