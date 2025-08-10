#include<stdio.h>
#include<math.h>
void check();
void main()
{

   check();
 }
 void check()
 {
     int r1,no,num;
    printf("Enter the number");
    scanf("%d",&no);
     for(int i=1;i<=no;i++)
     {
    int sum=0;
    num=i;
    int temp=i;
    int digit=0;
    while(temp!=0)
    {
        temp=temp/10;
        digit++;

    }
   
    temp=num;
    while(temp!=0)
    {
        r1=temp%10;
        sum=sum+pow(r1,digit);
        temp=temp/10;
    }
    // printf("%d",sum); 
    if(sum==num)
    {
        printf("\n %d",num);
    }
}
 }