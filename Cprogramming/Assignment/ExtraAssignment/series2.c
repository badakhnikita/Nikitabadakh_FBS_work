#include<stdio.h>
void main()
{
    int num;
    printf("\n Enter the number:");
    scanf("%d",&num);
int i=0,temp=1;
while(i<num)
{
    temp=temp+i;
    printf("\n%d",temp);
    i++;
}

}