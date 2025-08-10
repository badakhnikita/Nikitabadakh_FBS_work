#include<stdio.h>
void check();
void main()
{
    check();
}
void check()
{
    int no;
    printf("enter the number");
    scanf("%d",&no);
    int r1;
    for(int j=1;j<=no;j++)
    {
        int n=j;
      int sum=0;
    while(n!=0)
    {
        r1=n%10;
        int i=1,num=1;
        while(i<=r1)
        {
            num=num*i;
            i++;
        }
        sum=sum+num;
        n=n/10;
    }
    if(sum==j)
    {
        printf("\n %d",j);
    }
}
}