#include<stdio.h>
void time();
void main()
{
    time();
}
void time()
{
    int tmin,hr,min;
    printf("Enter the time");
    scanf("%d",&tmin);
    hr=tmin/60;
    min=tmin%60;
    printf("hours and min is %d %d",hr,min);
}
