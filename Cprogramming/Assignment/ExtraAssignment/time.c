#include<stdio.h>
void main()
{
    int hrs,min;
    printf("\n Enter the time in 24 hours format:");
    scanf("%d %d",&hrs,&min);
    if(hrs == 0){
        printf("converted time: 12:%d AM",min);
    }
    else if(hrs<12)
    {
    printf("converted time:%d:%d AM",hrs,min);
    }
    else if(hrs==12)
    {
       printf("converted time:12:%dPM",min);  
    }
    else
    {
         printf("converted time:%d:%d PM",hrs-12,min);
    }
}