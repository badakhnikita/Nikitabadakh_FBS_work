#include<stdio.h>
struct complex
{
  int real,imaginary;
};
struct complex store();
struct complex sum(struct complex ,struct complex );
struct complex sub(struct complex ,struct complex );
void display(struct complex );
void main()
{
    struct complex c,c1,c3;
    c=store();
    display(c);
    c1=store();
    display(c1);
    c3=sum(c,c1);
    display(c3);
    c3=sub(c,c1);
    display(c3);
}
struct complex store()
{
    struct complex temp;
    printf("\n Enter the details of complex number");
    scanf("\n %d",&temp.real);
    scanf("\n %d",&temp.imaginary);
    return temp;
   
}
void display(struct complex c)
{
    printf("\n complex number: %d+%di",c.real,c.imaginary);
}

struct complex sum(struct complex c,struct complex c1)
{
    struct complex c3;
    c3.real=c.real+c1.real;
    c3.imaginary=c.imaginary+c1.imaginary;
    return c3;
}
struct complex sub(struct complex c,struct complex c1)
{
    struct complex c3;
    c3.real=c.real+c1.real;
    c3.imaginary=c.imaginary+c1.imaginary;
    return c3;
}