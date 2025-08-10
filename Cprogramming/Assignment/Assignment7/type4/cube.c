#include<stdio.h>
int cube(int);
int square(int);//declaration
void main()
{
    int a;
    printf("Enter the number");
    scanf("%d",&a);
     int d=cube(a);
     int r=square(a);
     printf("%d %d",d,r);
}//end of main;
int cube(int a)
{
    int c;
    
    return c=a*a*a;
   
}//end of function
int square(int a)
{
    int s;
    return s=a*a;
}