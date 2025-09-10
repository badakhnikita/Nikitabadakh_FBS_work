#include<stdio.h>
void main()
{
    int num;
    printf("\n Enter the number:");
    scanf("%d",&num);
    int i=0, temp=1;
    while(i<num)
    {
        printf("%d,",temp);
        temp=temp*10+1;
        i++;
    }
}