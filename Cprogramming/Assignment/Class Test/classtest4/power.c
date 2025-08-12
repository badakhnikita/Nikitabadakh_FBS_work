#include<stdio.h>
void main()
{
    int num,pow,p=1;
    printf("enter the number");
    scanf("%d",&num);
    printf("enter the number");
    scanf("%d",&pow);
    for(int i=1;i<=pow;i++)
    {
    
     p=p*num;
}
    printf("%d",p);
}