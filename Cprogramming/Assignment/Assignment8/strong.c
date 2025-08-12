#include<stdio.h>
void strong(int*);
void main()
{
    int no;
printf("Enter the number");
 scanf("%d",&no);
strong(&no);
}
void strong(int* no)
{
    int sum=0,r1;
   int  n=*no;
    while(*no!=0)
    {
        r1=*no%10;
       int  i=1,num=1;
        while(i<=r1)
        {
            num=num*i;
          i++;  
        }
        sum=sum+num;
        *no=*no/10;
       
    }
    printf("%d",sum);
    if(sum==n)
    {
        printf("number is strong");
    }
    else
    {
        printf("number is not strong");
    }
}