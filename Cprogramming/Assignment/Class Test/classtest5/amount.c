#include<stdio.h>
int amt;
void showmenu();
void deposite();
void withdraw();
void main()
{
    
    amt=3000;

while(1)
{
    showmenu();
int choice;
printf("Enter the choice");
scanf("%d",&choice);
if(choice==1)
{
    deposite();
}
else if(choice==2)
{
    withdraw();
}
else if(choice==3)
{
    printf("\n exit");
    break;
}
else
{
    printf("\n invalid choice");
}
}
}

void showmenu()
{
    printf("\n 1. Deposite the money");
    printf("\n 2. Withdraw the money");
    printf("\n 3.exit");
}
void deposite()
{
    int amount;
   printf("enter the amount");
    scanf("%d",&amount);
   
    amt=amount+amt;
    printf("total amount %d",amt);
}
void withdraw()
{
    int amount1;
    printf("enter the amount");
    scanf("%d",&amount1);
    if(amount1>3000)
    {
        if(amount1<=amt)
        {
            amt=amt-amount1;
      printf("\n amount will be withdraw %d",amt);
        }
        else{
            printf("amount is not sufficient in account");
        }
    }
    else
    {
        printf("\n Cant withdraw the amount balance is not sufficient");
    }
}