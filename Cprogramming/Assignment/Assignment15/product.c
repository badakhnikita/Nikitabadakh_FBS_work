#include<stdio.h>
struct product
{
    int id;
    char name[20];
    int quantity;;
    double price;
    
};
void store(struct product* );
void display(struct product );
void main()
{
    struct product p;
    store(&p);
    display(p);
}
void store(struct product* p)
{
    printf("\n Enter the details of product");
    scanf("\n %d",&p->id);
    scanf("\n %s",&p->name);
    scanf("\n %d",&p->quantity);
    scanf("\n %lf",&p->price);

}
void display(struct product p)
{
    printf("\n %d",p.id);
    printf("\n %s",p.name);
    printf("\n %d",p.quantity);
    printf("\n %lf",p.price);
    
}