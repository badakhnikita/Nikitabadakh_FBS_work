#include<stdio.h>
void temp();
void main()
{
    temp();
}
void temp()
{
    int c;
    printf("enter the temperature");
    scanf("%d",&c);
    double f;
    f=(c*9/5)+32;
    printf("Temperature in Fahrenheit %lf",f);
}