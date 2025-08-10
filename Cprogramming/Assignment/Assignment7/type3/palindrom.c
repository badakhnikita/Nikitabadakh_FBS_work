#include<stdio.h>
void reverse(int);
void main()
{    
    int no;
    printf("Enter the number");
    scanf("%d",&no);
    reverse(no);
}
void reverse(int n1)
{
    int r1,res=0,q1;
    q1=n1;
    while(n1!=0)
    {
        r1=n1%10;
        res=res*10+r1;
        n1=n1/10;
       
    }
    printf("%d",res); 
    if(res==q1)
    {
        printf("number is palindrom");
    }  
    else{
        printf("number is not palindrom");
    }               
}