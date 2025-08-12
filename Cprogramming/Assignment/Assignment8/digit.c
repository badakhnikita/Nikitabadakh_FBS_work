#include<stdio.h>
void digit(int*);
void main()
{
     int x=223410;
    digit(&x);
}
void digit(int* x1)
{
   
    int q=*x1%100;
    printf("%d",q);
}