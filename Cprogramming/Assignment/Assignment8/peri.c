#include<stdio.h>
void perimeter(int*,int*);
void main()
{
     int l;
    int w;
    printf("Enter the length and width");
    scanf("%d %d",&l,&w);
  perimeter(&l,&w);
}
void perimeter(int *l,int *w)
{
    
    int p;
    p=2*(*l+*w);
    printf("perimeter of rectangle %d",p);
}