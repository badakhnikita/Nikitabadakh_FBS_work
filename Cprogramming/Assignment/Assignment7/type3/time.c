#include<stdio.h>
void time(int);
void main()
{
    int tmin;
    printf("Enter the time");
    scanf("%d",&tmin);
    time(tmin);
}
void time(int tmin)
{
    int hr,min;
    hr=tmin/60;
    min=tmin%60;
    printf("hours and min is %d %d",hr,min);
}
