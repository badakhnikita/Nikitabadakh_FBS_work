#include<stdio.h>
void temp(int);
void main()
{
    int c;
    printf("enter the temperature");
    scanf("%d",&c);
    temp(&c);
}
void temp(int* c)
{
    double f;
    f=(*c*9/5)+32;
    printf("Temperature in Fahrenheit %lf",f);
}