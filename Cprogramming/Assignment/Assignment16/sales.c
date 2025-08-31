#include<stdio.h>
struct sale
{
    char prodname[20];
    double price;
    int quantity;
};
void showmenu();
void add(struct sale* ,int);
void display(struct sale*,int );
void calculateprice(struct sale* ,int );
void main()
{
  struct sale p[5];
  char ch;
  do
  {
    showmenu();
    int choice;
    printf("\n Enter the choice");
    scanf("\n %d",&choice);
    if(choice==1)
    {
        add(p,5);
    }
    else if(choice==2)
    {
        display(p,5);
    }
    else if(choice==3)
    {
       calculateprice(p,5);
    }
    else
    {
        printf("\n invalid choice");

    }
    
    printf("\nDo you want to continue");
    scanf(" %c",&ch);
  }while(ch=='y'||ch=='Y');

}

void showmenu()
{
    printf("\nEnter the menu");
    printf("\n1.Add the sales information");
    printf("\n2.Display the sales information");
    printf("\n3.Display the total cost");
   
}
void add(struct sale* p,int size)
{
    
    for(int i=0;i<size;i++)
    {
    printf("\n Enter the details of sales ");
    scanf("\n %s",&p[i].prodname);
    scanf("\n %lf",&p[i].price);
    scanf("\n %d",&p[i].quantity);
    }
}

void display(struct sale* p,int size)
{
    for(int i=0;i<size;i++)
    {
    printf("\n Enter the details of sales ");
    printf("\n%d %s",i,p[i].prodname);
    printf("\n %lf",p[i].price);
    printf("\n %d",p[i].quantity);  
    }
}
double total=0;
void calculateprice(struct sale* p,int size)
{
    int quantity,ch;
    // display(p,size);
    printf("Enter the product id which you want to buy");
    scanf("%d",&ch);
    printf("\n Enter the quantity");
    scanf("\n %d",&quantity);
if(quantity<=p[ch].quantity)
{
total+=p[ch].price*quantity;
p[ch].quantity=p[ch].quantity-quantity;
printf("\n productname:%s quantity: %d",p[ch].prodname,p[ch].quantity);
}
else
{
    printf("\n insufficient quantity");
}
printf("\n total bill %lf",total);
}