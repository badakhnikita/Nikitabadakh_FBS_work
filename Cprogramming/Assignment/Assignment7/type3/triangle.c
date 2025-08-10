#include<stdio.h>
void getarea(int,int);
void main()
{
    int a,b;
    printf("enter the value");
    scanf("%d %d",&a,&b);
    getarea(a,b);
}
void getarea(int a,int b)
{
    int area;
     area=0.5*a*b;
    printf("area of triangle %d",area);
}