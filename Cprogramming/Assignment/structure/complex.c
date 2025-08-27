#include<stdio.h>
struct complex
{
  int real,imaginary;
};
struct complex store();
void display(struct complex );
void main()
{
    struct complex c,c1,c2;
    c=store();
    display(c);
    c1=store();
    display(c1);
    c2=store();
    display(c2);
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