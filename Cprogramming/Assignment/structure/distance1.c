#include<stdio.h>
struct distance
{
  int m,cm;
};
struct distance store( );
struct distance convertdistance(struct distance );
void display(struct distance );
void main()
{
    struct distance d;
    d=store();
    display(d);
    d=convertdistance(d);
    display(d);
}
struct distance store()
{
    struct distance temp;
    printf("\n Enter the details of distance");
    scanf("\n %d",&temp.m);
    scanf("\n %d",&temp.cm);
    return temp;
   
}
void display(struct distance d)
{
    printf("\n m: %d",d.m);
    printf("\n cm: %d",d.cm);
}
struct distance convertdistance(struct distance d)
{
    int tcm=d.m*100+d.cm;
    d.m=tcm/100;
    d.cm=tcm%100;
    return d;
}