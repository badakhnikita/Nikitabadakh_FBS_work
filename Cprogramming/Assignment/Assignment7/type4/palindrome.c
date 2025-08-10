#include<stdio.h>
int reverse(int);
void main()
{
    int no;
    printf("Enter the number");
    scanf("%d",&no);
   int r=reverse(no);
   if(r==1)
   {
    printf("number is palindrom");
   }
   else
   {
    printf("number is not palindrom");
   }
}
int reverse(int no)
{
    int r1,res=0,q1;
    q1=no;
    while(no!=0)
    {
        r1=no%10;
        res=res*10+r1;
        no=no/10;
       
    }
    printf("%d",res); 
    if(res==q1)
    {
        return 1;
    }  
    else{
        return 0;
    }               
}