#include<stdio.h>
struct admin
{
    int id;
    char name[20];
    double salary;
    double allowance;
};
struct admin store( );
void display(struct admin );
void main()
{
    struct admin a,a1,a2;
    a=store();
    display(a);
    a1=store();
    display(a1);
    a2=store();
    display(a2);
}
struct admin store()
{  
    struct admin temp;
    printf("\n Enter the details of admin");
    scanf("\n %d",&temp.id);
    scanf("\n %s",&temp.name);
    scanf("\n %lf",&temp.salary);
    scanf("\n %lf",&temp.allowance);
    return temp;
}
void display(struct admin a)
{
    printf("\n %d",a.id);
    printf("\n %s",a.name);
    printf("\n %lf",a.salary);
     printf("\n %lf",a.allowance);

}