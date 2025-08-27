#include<stdio.h>
struct HR
{
    int id;
    char name[20];
    double salary;
    double commission;
};
struct HR store();
void display(struct HR );
void main()
{
    struct HR h,h1,h2;
   h=store();
    display(h);
    h1=store();
    display(h1);
    h2=store();
    display(h2);
}
 struct HR store()
{
    struct HR temp;
    printf("\n Enter the details of hr");
    scanf("\n %d",&temp.id);
    scanf("\n %s",&temp.name);
    scanf("\n %lf",&temp.salary);
    scanf("\n %lf",&temp.commission);
    return temp;
}
void display(struct HR h)
{
    printf("\n %d",h.id);
    printf("\n %s",h.name);
    printf("\n %lf",h.salary);
     printf("\n %lf",h.commission);

}