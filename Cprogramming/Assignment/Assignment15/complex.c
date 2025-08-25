#include<stdio.h>
struct complex
{
  int real,imaginary;
};
void store(struct complex* );
void display(struct complex );
void main()
{
    struct complex c;
    store(&c);
    display(c);
}
void store(struct complex* c)
{
    printf("\n Enter the details of complex number");
    scanf("\n %d",&c->real);
    scanf("\n %d",&c->imaginary);
   
}
void display(struct complex c)
{
    printf("\n complex number: %d+%di",c.real,c.imaginary);
    
    

}