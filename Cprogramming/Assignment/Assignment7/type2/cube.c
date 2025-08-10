#include<stdio.h>
int cube();
int square();//declaration
void main()
{
     int d=cube();
     int r=square();
     printf("%d %d",d,r);
}//end of main;
int cube()
{
    int a,c;
    printf("Enter the number");
    scanf("%d",&a);
    
    return c=a*a*a;
   
}//end of function
int square()
{
    int a,s;
    printf("Enter the number");
    scanf("%d",&a);
    return s=a*a;
}