#include<stdio.h>
void main()
{
int num,choice;
printf("enter the number");
scanf("%d",&num);
while(1)
{
    printf("\nstart");
    printf("\n1. even or odd");
    printf("\n2. prime or not");
    printf("\n3. palindrom or not");
    printf("\n4. positive,negative,neutral");
    printf("\n5. reverse number");
    printf("\n6. sum of digit");
    printf("\n7. Exit");
    printf("\n enter the choice");
    scanf("%d",&choice);
    if(choice==1)
    {
        if(num%2==0)
        {
            printf("\n number is even");
        }
        else
        {
            printf("\n number is odd");
        }
    }
     else if(choice==2)
        {
            int i=2,isprime=1;
            if(num<=1)
            {
                isprime=0;
            }
            else
            {
                while(i<num/2)
                {
                    if(num%i==0)
                    {
                        isprime=0;
                        break;
                    }
                    i++;
                }
                if(isprime)
                {
                    printf("\n number is prime");
                }
                else
                {
                    printf("\n number is not prime");
                }
            }
        }
     
     else if(choice==3)
     {
        int r1,res=0;
        int n=num;
        while(n!=0)
        {
            r1=n%10;
            res=res*10+r1;
            n=n/10;
        }
        if(res==num)
        {
            printf("\n number is palindrom");
        }
        else{
            printf("\n number is not palindrom");
        }

     }
     else if(choice==4)
     {
        if(num>0)
        {
            printf("number is positive");

        }
        else 
        {
            if(num<0)
        {
            printf("\n number is negative");
        }
        else
        {
            printf("\n number is zero");
        }
        }
     }
     else if(choice==5)
     {
        int r1,res=0;
        int n=num;
        while(n!=0)
        {
            r1=n%10;
            res=res*10+r1;
            n=n/10;
        }
          printf("\n reverse number %d",res);
        
     }
     else if(choice==6)
     {
        int r1,sum=0;
        int temp=num;
        while(temp!=0)
        {
            r1=temp%10;
            sum=sum+r1;
            temp=temp/10;
        }
        printf("\n sum is %d",sum);
     }
     else if(choice==7)
     {
        printf("\n exit");
        break;
     }
    else{
        printf("\n invalid choice");
    }
}
}