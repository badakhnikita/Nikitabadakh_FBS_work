#include<stdio.h>
void mark(int*,int*,int*,int*,int*);
void main()
{
    int oop,dsa,fds,stqa,math;
    printf("Enter the marks");
    scanf("%d %d %d %d %d",&oop,&dsa,&fds,&stqa,&math);
    mark(&oop,&dsa,&fds,&stqa,&math);
}
void mark(int *oop,int *dsa,int *fds,int *stqa,int *math)
{
    int total; 
    float per;
    total=*oop+*dsa+*fds+*stqa+*math;
    per=(total/500.0)*100;
    printf("Total marks and percentage %d %f",total,per);
}