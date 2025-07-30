#include<stdio.h>
void main()
{
    int x=121;
    int q1;
    int r1=x%10;
    q1=x/10;
    int r2=q1%10;
    int r3=q1/10;
    int res=r1*100+r2*10+r3;
    if(res==x)
    {
        printf("number is palindrom");
    }
    else
    {
        printf("number is not palindrom");
    }
}