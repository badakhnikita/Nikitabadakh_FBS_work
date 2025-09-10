#include<stdio.h>
void main()
{
    int num;
    printf("\n Enter the number:");
    scanf("%d",&num);
    int i=2,n=1;
    printf("%d ",n);
    while(i<=num)
    {
        n=n*2;

        if(i%2==0)
        {
        printf("-%d ",n);
        }
        else{
           printf("%d ",n); 
        }
        i++;
    }
}