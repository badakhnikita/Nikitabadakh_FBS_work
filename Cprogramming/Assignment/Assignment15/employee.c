#include<stdio.h>
struct employee
{
    int id;
    char name[20];
    double salary;
};

void store(struct employee*);
void display(struct employee);
void main()
{
    struct employee e;
    store(&e);
    display(e);
}

void store(struct employee* e)
{
    printf("\n Enter the details of employee");
    scanf("\n %d",&e->id);
    scanf("\n %s",&e->name);
    scanf("\n %lf",&e->salary);
}
void display(struct employee e)
{
    printf("\n %d",e.id);
    printf("\n %s",e.name);
    printf("\n %lf",e.salary);
}