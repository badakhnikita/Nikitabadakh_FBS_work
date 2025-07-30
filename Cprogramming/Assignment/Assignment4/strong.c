#include<stdio.h>
void  main()
{
    int sum=0,no,r1;
    printf("Enter the number");
    scanf("%d",&no);
   int  n=no;
    while(no!=0)
    {
        r1=no%10;
       int  i=1,num=1;
        while(i<=r1)
        {
            num=num*i;
          i++;  
        }
        sum=sum+num;
        no=no/10;
       
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