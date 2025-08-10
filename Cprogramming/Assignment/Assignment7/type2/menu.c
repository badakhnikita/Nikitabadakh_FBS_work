#include<stdio.h>
int num;
void showmenu();
int evenodd();
int prime();
int palindrom();
int check();
int reverse();
int sum();
void main()
{
int choice;
printf("enter the number");
scanf("%d",&num);
while(1)
{
    showmenu();
printf("\n enter the choice");
scanf("%d",&choice);

if(choice==1)
{
    if(evenodd())
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
    if(prime())
    {
        printf("\n number is prime");
    }
    else{
        printf("\n number is not prime");
    }
   
}
else if(choice==3)
{
    if(palindrom())
    {
         printf("\n number is palindrom");
    }
    else{
         printf("\n number is not  palindrom");
    }
} 
else if(choice==4)
{
    int r=check();
    if(r==1)
    {
        printf("number is positive");
    }
    else if(r==2){
        printf("number is negative");
    }
    else{
        printf("number is neutral");
    }
} 
else if(choice==5)
{
    int r=reverse();
    printf("reverse %d",r);
   
}
else if(choice==6)
{
    int r1=sum();
    printf("sum %d",r1);
    
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
    

    int evenodd()
    {
       
        if(num%2==0)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
     int prime()
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
                    return 1;
                }
                else
                {
                    return 0;
                }
            }
        }
     int palindrom()
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
           return 1;
        }
        else{
            return 0;
        }

     }
    int check()
     {
      
        if(num>0)
        {
            return 1;

        }
        else 
        {
            if(num<0)
        {
            return 2;
        }
        else
        {
            return 0;
        }
        }
     }
     int reverse()
     {
        int r1,res=0;
        int n=num;
        while(n!=0)
        {
            r1=n%10;
            res=res*10+r1;
            n=n/10;
        }
         return res;
        
     }
     int sum()
     {
        int r1,sum=0;
        int temp=num;
        while(temp!=0)
        {
            r1=temp%10;
            sum=sum+r1;
            temp=temp/10;
        }
       return sum;
     }
     


