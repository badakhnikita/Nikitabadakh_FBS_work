#include<stdio.h>
struct student
{
    int rollno;
    char name[20];
    int mark;
};
void store(struct student *s);
void display(struct student s );
void main()
{
    struct student s;
    store(&s);
    display(s);

}

void store(struct student *s)
{
    printf("Enter the details of student");
    scanf("\n %d",&s->rollno);
    scanf("\n %s",&s->name);
    scanf("\n %d",&s->mark);
}

void display(struct student s)
{
    printf("\n rollno:%d",s.rollno);
    printf("\n name:%s",s.name);
    printf("\n mark:%d",s.mark);
}