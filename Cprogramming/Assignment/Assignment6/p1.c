#include<stdio.h>
void main()
{
    int num;
    printf("Enter the number");
    scanf("%d",&num);
    for(int i=1;i<=num;i++)
    {
        for(int j=1;j<=num;j++)
        {
           
         printf("* ");
        }
        printf("\n");
    }
}