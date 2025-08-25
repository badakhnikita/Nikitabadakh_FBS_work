#include<stdio.h>
struct time
{
  int hrs,min,sec;
};
void store(struct time* );
void display(struct time );
void main()
{
    struct time t;
    store(&t);
    display(t);
}
void store(struct time* t)
{
    printf("\n Enter the details of time");
    scanf("\n %d",&t->hrs);
    scanf("\n %d",&t->min);
    scanf("\n %d",&t->sec);
}
void display(struct time t)
{
    printf("\n hrs: %d",t.hrs);
    printf("\n min: %d",t.min);
    printf("\n  sec:%d",t.sec);

}