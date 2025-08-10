#include<stdio.h>
double student(double,char);
void main()
{
    double price;
    printf("enter the price");
    scanf("%lf",&price);
    char ch='s';
    printf("enter the character");
    fflush(stdin);
    scanf(" %c",&ch);
   double res= student(price,ch);
   printf("%lf",res);
   
    
}
double student(double price,char ch)
{
    double discount=0;
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
    return totalp;
}