#include<stdio.h>
struct distance
{
  int feet,inch;
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
    scanf("\n %d",&temp.feet);
    scanf("\n %d",&temp.inch);
    return temp;
   
}
void display(struct distance d)
{
    printf("\n feet: %d",d.feet);
    printf("\n inch: %d",d.inch);
}
struct distance convertdistance(struct distance d)
{
    int tinch=d.feet*12+d.inch;
    d.feet=tinch/12;
    d.inch=tinch%12;
    return d;
}