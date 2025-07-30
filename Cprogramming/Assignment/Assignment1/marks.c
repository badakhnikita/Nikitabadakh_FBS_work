#include<stdio.h>
void main()
{
    int oop=50,dsa=40,fds=60,stqa=40,math=50;
    int total; 
    float per;
    total=oop+dsa+fds+stqa+math;
    per=(total/500.0)*100;
    printf("Total marks and percentage %d %f",total,per);
}