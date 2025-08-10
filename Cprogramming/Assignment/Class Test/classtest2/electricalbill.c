#include<stdio.h>
void main()
{
    int unit,bill;
    printf("enter the units");
    scanf("%d",&unit);
    if(unit==1 || unit<=50)
    {
        bill=30*unit;
    }  
    else if(unit==51 || unit<=150)
    {
        bill=40*unit;
       
    }
    else 
    {
        bill=50*unit;
    }  
    
    printf("electrical bill %d",bill);
}
