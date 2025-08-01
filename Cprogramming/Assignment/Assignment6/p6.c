#include<stdio.h>
void main()
{
    int n;
    printf("enter the number");
    scanf("%d",&n);
   
    for(int i=1;i<=n;i++)
    {
         int count=1;
        for(int j=1;j<=i;j++)
        {
          
            printf("%d ",count++);
         
        }
        printf("\n");
    }
}