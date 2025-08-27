#include<stdio.h>
struct distance
{
  int feet,inch;
};
struct distance store( );
void display(struct distance );
void main()
{
    struct distance d,d1,d2;
    d=store();
    display(d);
    d1=store();
    display(d1);
    d2=store();
    display(d2);
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
    printf("\n inch: %d",d.feet);
    printf("\n feet: %d",d.inch);
    

}