#include<stdio.h>
struct product
{
    int id;
    char name[20];
    int quantity;;
    double price;
    
};
struct product store( );
void display(struct product );
void main()
{
    struct product p,p1,p2;
    p=store();
    display(p);
    p1=store();
    display(p1);
    p2=store();
    display(p2);
    
}
struct product store()
{
    struct product temp;
    printf("\n Enter the details of product");
    scanf("\n %d",&temp.id);
    scanf("\n %s",&temp.name);
    scanf("\n %d",&temp.quantity);
    scanf("\n %lf",&temp.price);
    return temp;

}
void display(struct product p)
{
    printf("\n %d",p.id);
    printf("\n %s",p.name);
    printf("\n %d",p.quantity);
    printf("\n %lf",p.price);
    
}