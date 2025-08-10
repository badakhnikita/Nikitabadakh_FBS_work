#include<stdio.h>
int strong(int);
int main()
{
    int no;
     printf("Enter the number");
    scanf("%d",&no);
if(strong(no))
{
    printf("number is strong");
}
else{
    printf("number is not strong");
}
}
int strong(int no)
{
    int sum=0,r1;
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
       return 1;
    }
    else
    {
        return 0;
    }
}
