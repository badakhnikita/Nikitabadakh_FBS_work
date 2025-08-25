#include<stdio.h>
struct admin
{
    int id;
    char name[20];
    double salary;
    double allowance;
};
void store(struct admin* );
void display(struct admin );
void main()
{
    struct admin a;
    store(&a);
    display(a);
}
void store(struct admin* a)
{
    printf("\n Enter the details of admin");
    scanf("\n %d",&a->id);
    scanf("\n %s",&a->name);
    scanf("\n %lf",&a->salary);
    scanf("\n %lf",&a->allowance);
}
void display(struct admin a)
{
    printf("\n %d",a.id);
    printf("\n %s",a.name);
    printf("\n %lf",a.salary);
     printf("\n %lf",a.allowance);

}