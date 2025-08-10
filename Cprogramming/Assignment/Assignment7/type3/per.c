#include<stdio.h>
void check(int);
void main()
{
    int num;
    printf("Enter the number");
    scanf("%d",&num);
    check(num);    
}
void check(int num)
{

    for(int j=1;j<=num;j++)
    {
        int no=j;
        int i=1;
    int sum=0;
    while(i<j)
    {
        if(j%i==0)
        {
            sum=sum+i;
        }
        i++;
    }
if(sum==no)
{
    printf("%d",j);
}
    }
}