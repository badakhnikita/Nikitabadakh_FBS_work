#include<stdio.h>
#include<math.h>
void main()
{
    int a,b,c,root1,root2,discriminant,realpart,imagpart;
    printf("\n Enter the coefficient of a, b, c:");
    scanf("%d %d %d",&a,&b,&c);
    discriminant=b*b-(4*a*c);
    if(discriminant>0)
    {
        root1=-b+sqrt(discriminant)/(2*a);
        root1=-b-sqrt(discriminant)/(2*a);
        printf("\n roots are real and distinct %d %d",root1,root2);
    }
    else if(discriminant==0)
    {
       root1=root2=-b/(2*a);
        printf("\n roots are real and equal %d %d",root1,root2);
    }
    else
    {
        realpart=-b/(2*a);
        imagpart=sqrt(-discriminant)/(2*a);
        printf("\n roots are complex and conjugate %d+%di and %d-%di",realpart,imagpart,realpart,imagpart);
    }
}