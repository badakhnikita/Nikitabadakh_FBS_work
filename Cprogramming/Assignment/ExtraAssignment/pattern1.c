#include<stdio.h>
void main()
{
    int rows=3,col=5;
    for(int i=1;i<=rows;i++)
    {
        for(int j=1;j<=col;j++)
        {
          if((i+j)%2==0)
          {
            printf("1");
          }
          else
          {
            printf("0");
          }
        }
        printf("\n");
    }
}