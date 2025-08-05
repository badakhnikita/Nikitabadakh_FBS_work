#include<stdio.h>
void mark();
void main()
{
    mark();
}
void mark()
{
    int oop,dsa,fds,stqa,math;
    printf("Enter the marks");
    scanf("%d %d %d %d %d",&oop,&dsa,&fds,&stqa,&math);
    int total; 
    float per;
    total=oop+dsa+fds+stqa+math;
    per=(total/500.0)*100;
    printf("Total marks and percentage %d %f",total,per);
}