#include<stdio.h>
struct salesmanager
{
    int id;
    char name[20];
    double salary;
    double incentive;
    int target;
};
struct salesmanager store();
void display(struct salesmanager);
void main()
{
    struct salesmanager m,m1,m2;
    m=store();
    display(m);
     m1=store();
    display(m1);
     m2=store();
    display(m2);
}
struct salesmanager store()
{
    struct salesmanager temp;
    printf("\n Enter the details of  salesmanager");
    scanf("%d",&temp.id);
    scanf("%s",&temp.name);
    scanf("%lf",&temp.salary);
    scanf("%lf",&temp.incentive);
     scanf("%d",&temp.target);
     return temp;
}
void display(struct salesmanager m)
{
    printf("\n %d",m.id);
    printf("\n %s",m.name);
    printf("\n %lf",m.salary);
    printf("\n %lf",m.incentive);
    printf("\n %d",m.target);

}