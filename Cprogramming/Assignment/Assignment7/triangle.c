#include<stdio.h>
void triangle();
void main()
{
    triangle();
}
void triangle()
{
    int a,b,area;
    printf("enter the value");
    scanf("%d %d",&a,&b);
     area=0.5*a*b;
    printf("area of triangle %d",area);
}