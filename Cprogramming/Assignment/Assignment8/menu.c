#include<stdio.h>
void showmenu();
void evenodd(int*);
void prime(int*);
void palindrom(int*);
void check(int*);
void reverse(int*);
void sum(int*);
void main()
{
int choice,num;
printf("enter the number");
scanf("%d",&num);
while(1)
{
    showmenu();
printf("\n enter the choice");
scanf("%d",&choice);

if(choice==1)
{
    evenodd(&num);
}
else if(choice==2)
{
    prime(&num);
   
}
else if(choice==3)
{
    palindrom(&num);
} 
else if(choice==4)
{
    check(&num);
} 
else if(choice==5)
{
    reverse(&num);
   
}
else if(choice==6)
{
    sum(&num);
    ;
}
else if(choice==7)
{
    printf("exit");
    break;
}
else{
    printf("invalid choice");
}
}
}
void showmenu()
{
    printf("\nstart");
    printf("\n1. even or odd");
    printf("\n2. prime or not");
    printf("\n3. palindrom or not");
    printf("\n4. positive,negative,neutral");
    printf("\n5. reverse number");
    printf("\n6. sum of digit");
    printf("\n7. Exit");
}
    

    void evenodd(int* num)
    {
       
        if(*num%2==0)
        {
            printf("\n number is even");
        }
        else
        {
            printf("\n number is odd");
        }
    }
     void prime(int *num)
        {
            int i=2,isprime=1;
            if(*num<=1)
            {
                isprime=0;
            }
            else
            {
                while(i<*num/2)
                {
                    if(*num%i==0)
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
     void palindrom(int* num)
     {
        int r1,res=0;
        int n=*num;
        while(n!=0)
        {
            r1=n%10;
            res=res*10+r1;
            n=n/10;
        }
        if(res==*num)
        {
            printf("\n number is palindrom");
        }
        else{
            printf("\n number is not palindrom");
        }

     }
    void check(int *num)
     {
      
        if(*num>0)
        {
            printf("number is positive");

        }
        else 
        {
            if(*num<0)
        {
            printf("\n number is negative");
        }
        else
        {
            printf("\n number is zero");
        }
        }
     }
     void reverse(int *num)
     {
        int r1,res=0;
        int n=*num;
        while(n!=0)
        {
            r1=n%10;
            res=res*10+r1;
            n=n/10;
        }
          printf("\n reverse number %d",res);
        
     }
     void sum(int *num)
     {
        int r1,sum=0;
        int temp=*num;
        while(temp!=0)
        {
            r1=temp%10;
            sum=sum+r1;
            temp=temp/10;
        }
        printf("\n sum is %d",sum);
     }
     


