#include<stdio.h>
struct date
{
  int date,month,year;
};
void store(struct date* );
void display(struct date );
void main()
{
    struct date d;
    store(&d);
    display(d);
}
void store(struct date* d)
{
    printf("\n Enter the details of date");
    scanf("\n %d",&d->date);
    scanf("\n %d",&d->month);
    scanf("\n %d",&d->year);
}
void display(struct date d)
{
    printf("\n %d",d.date);
    printf("\n %d",d.month);
    printf("\n %d",d.year);

}