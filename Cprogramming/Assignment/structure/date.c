#include<stdio.h>
struct date
{
  int date,month,year;
};
struct date store();
void display(struct date );
void main()
{
    struct date d,d1,d2;
    d=store();
    display(d);
    d1=store();
    display(d1);
    d2=store();
    display(d2);
}
struct date  store()
{
    struct date temp;
    printf("\n Enter the details of date");
    scanf("\n %d",&temp.date);
    scanf("\n %d",&temp.month);
    scanf("\n %d",&temp.year);
    return temp;
}
void display(struct date d)
{
    printf("\n %d",d.date);
    printf("\n %d",d.month);
    printf("\n %d",d.year);

}