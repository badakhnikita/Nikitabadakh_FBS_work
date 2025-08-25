#include<stdio.h>
struct HR
{
    int id;
    char name[20];
    double salary;
    double commission;
};
void store(struct HR* );
void display(struct HR );
void main()
{
    struct HR h;
    store(&h);
    display(h);
}
void store(struct HR* h)
{
    printf("\n Enter the details of hr");
    scanf("\n %d",&h->id);
    scanf("\n %s",&h->name);
    scanf("\n %lf",&h->salary);
    scanf("\n %lf",&h->commission);
}
void display(struct HR h)
{
    printf("\n %d",h.id);
    printf("\n %s",h.name);
    printf("\n %lf",h.salary);
     printf("\n %lf",h.commission);

}