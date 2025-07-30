#include<stdio.h>
void main()
{
    int a=10, b=10, c=10;
    if(a==b && b==c)
    {
        printf("equilateral triangle");
    }
    else
    {
        if(a==b || b==c || a==c)
        {
            printf("isoscalar triangle");
        }
        else
        {
            printf("scalar triangle");
        }
    }
}