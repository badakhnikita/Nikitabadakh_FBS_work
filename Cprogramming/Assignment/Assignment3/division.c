#include<stdio.h>
void main()
{
    int x=4;
    if(x%3==0 && x%5==0)
     {
        printf("divisible by 3 and 5");
    }
    else
    {
        if(x%5==0)
        {
            printf("divisible by 5 but not by 3");
        }
        else
        {
            if(x%3==0)
            {
                printf("divisible by 3 but not 5");
            }
            else
            {
                printf("not divisible by 3 and  5");
            }
        }
    }
}