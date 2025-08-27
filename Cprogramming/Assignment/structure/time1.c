#include<stdio.h>
struct time
{
  int hrs,min,sec;
};
struct time store( );
struct time calculatetime(struct time );
void display(struct time );
void main()
{
    struct time t;
    t=store();
   t=calculatetime(t);
    display(t);

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
struct time calculatetime(struct time t)
{
    int tsec=t.hrs*3600+t.min*60+t.sec;
    t.hrs=tsec/3600;
    int min=tsec%3600;
    t.min=min/60;
    t.sec=min%60;
    return t;
}