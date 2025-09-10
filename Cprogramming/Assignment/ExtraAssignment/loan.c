#include<stdio.h>
void main()
{
    int age,salary;
    printf("\nEnter the age and salary of person:");
    scanf("%d %d",&age,&salary);
    if(age>=21 || salary>=25000)
    {
        printf("\n Person is eligible for loan");
    }
    else
    {
        printf("\n Person is not eligible for loan");
    }
}