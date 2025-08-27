#include<stdio.h>
struct employee
{
    int id;
    char name[20];
    double salary;
};

struct employee store();
void display(struct employee);
void main()
{
    struct employee e,e1,e2;
    e=store();
    display(e);
     e1=store();
     display(e1);
      e2=store();
      display(e2);
}

struct employee store()
{
    struct employee temp;
    printf("\n Enter the details of employee");
    scanf("\n %d",&temp.id);
    scanf("\n %s",&temp.name);
    scanf("\n %lf",&temp.salary);
    return temp;
}
void display(struct employee e)
{
    printf("\n %d",e.id);
    printf("\n %s",e.name);
    printf("\n %lf",e.salary);
}