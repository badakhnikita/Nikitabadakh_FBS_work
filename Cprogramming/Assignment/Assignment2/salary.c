#include<stdio.h>
void main()
{
    int basicS=6000,da,ta,hra;
    if(basicS<=5000)
    {
         da=basicS*0.10;
         ta=basicS*0.20;
         hra=basicS*0.25;
    }
    else
    {
        da=basicS*0.15;
         ta=basicS*0.25;
         hra=basicS*0.30;   
    }
    int totalS=da+ta+hra;
    printf("total salary=%d da=%d ta=%d hra=%d",totalS,da,ta,hra);
}