#include<stdio.h>
void alternate();
void main()
{
    alternate();
}
void alternate()
{
    int start,end,sum=0;
    printf("enter the start");
    scanf("%d",&start);
    printf("enter the end");
    scanf("%d",&end);
    for(int i=start;i<=end;i=i+2)
    {
        sum=sum+i;
    }
    printf("%d",sum);
}