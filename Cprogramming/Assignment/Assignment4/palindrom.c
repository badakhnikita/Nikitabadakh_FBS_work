#include<stdio.h>
void main()                                               
{
    int r1,no,res=0,q1;
    printf("Enter the number");
    scanf("%d",&no);
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
        printf("number is palindrom");
    }  
    else{
        printf("number is not palindrom");
    }                                                                                                                                                                     
}