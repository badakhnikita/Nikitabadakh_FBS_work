#include<stdio.h>
struct time
{
  int hrs,min,sec;
};
struct time store( );
void display(struct time );
void main()
{
    struct time t,t1,t2;
   t=store();
    display(t);
    t1=store();
    display(t1);
    t2=store();
    display(t2);
}
struct time store()
{
    struct time temp;
    printf("\n Enter the details of time");
    scanf("\n %d",&temp.hrs);
    scanf("\n %d",&temp.min);
    scanf("\n %d",&temp.sec);
    return temp;
}
void display(struct time t)
{
    printf("\n hrs: %d",t.hrs);
    printf("\n min: %d",t.min);
    printf("\n  sec:%d",t.sec);

}