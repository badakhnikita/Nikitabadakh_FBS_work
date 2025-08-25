#include<stdio.h>
struct distance
{
  int feet,inch;
};
void store(struct distance* );
void display(struct distance );
void main()
{
    struct distance d;
    store(&d);
    display(d);
}
void store(struct distance* d)
{
    printf("\n Enter the details of distance");
    scanf("\n %d",&d->feet);
    scanf("\n %d",&d->inch);
   
}
void display(struct distance d)
{
    printf("\n inch: %d",d.feet);
    printf("\n feet: %d",d.inch);
    

}