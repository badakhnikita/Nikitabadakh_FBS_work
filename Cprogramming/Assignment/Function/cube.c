#include<stdio.h>
void cube();//declaration
void main()
{
     cube();
}//end of main;
void cube()
{
    int a,s,c;
    printf("Enter the number");
    scanf("%d",&a);
    s=a*a;
    c=a*a*a;
    printf("Square and cube of %d is %d %d",a,s,c);
}//end of function