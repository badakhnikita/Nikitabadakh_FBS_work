#include<stdio.h>
void cube(int);//declaration
void main()
{    int a;
     printf("Enter the number");
    scanf("%d",&a);
     cube(a);
}//end of main;
void cube(int a1)
{
    int s,c;
    s=a1*a1;
    c=a1*a1*a1;
    printf("Square and cube of %d is %d %d",a1,s,c);
}//end of function