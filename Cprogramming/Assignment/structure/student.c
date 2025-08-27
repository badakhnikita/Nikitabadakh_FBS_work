#include<stdio.h>
struct student
{
    int rollno;
    char name[20];
    int mark;
};
struct student  store();
void display(struct student s );
void main()
{
    struct student s,s1,s2;
    s=store();
    display(s);
    s1=store();
    display(s1);
    s2=store();
    display(s2);

}

struct student store()
{
    struct student temp;
    printf("Enter the details of student");
    scanf("\n %d",&temp.rollno);
    scanf("\n %s",&temp.name);
    scanf("\n %d",&temp.mark);
    return temp;
}

void display(struct student s)
{
    printf("\n rollno:%d",s.rollno);
    printf("\n name:%s",s.name);
    printf("\n mark:%d",s.mark);
}