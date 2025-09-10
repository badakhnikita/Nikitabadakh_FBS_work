#include<stdio.h>
void main()
{
    int n;
    printf("\n Enter the number:");
    scanf("%d",&n);
     char count='A';
    for(int i=1;i<=n;i++)
    {
       
        for(int j=1;j<=i;j++)
        {
            printf("%c",count++);
        }
      printf("\n");
    }
}