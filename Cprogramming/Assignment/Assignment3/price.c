#include<stdio.h>
void main()
{
    double price=600,discount=0;
    char ch='s'; //s=student;
    if(ch=='s')
    {
        if(price>500)
        {
            discount=price*0.20;
        }
        else
        {
            discount=price*0.10;
        }
    }
    else
    {
        if(price>600)
        {
            discount=price*0.15;
        }
        else
        {
            discount=0.0;
        }
    }
   double totalp=price-discount;
   printf("%lf",totalp);
}