#include<stdio.h>
struct salesmanager
{
    int id;
    char name[20];
    double salary;
    double incentive;
    int target;
};
void store(struct salesmanager* );
void display(struct salesmanager );
void main()
{
    struct salesmanager m;
    store(&m);
    display(m);
}
void store(struct salesmanager* m)
{
    printf("\n Enter the details of  salesmanager");
    scanf("\n %d",&m->id);
    scanf("\n %s",&m->name);
    scanf("\n %lf",&m->salary);
    scanf("\n %lf",&m->incentive);
     scanf("\n %d",&m->target);
}
void display(struct salesmanager m)
{
    printf("\n %d",m.id);
    printf("\n %s",m.name);
    printf("\n %lf",m.salary);
    printf("\n %lf",m.incentive);
    printf("\n %d",m.target);

}