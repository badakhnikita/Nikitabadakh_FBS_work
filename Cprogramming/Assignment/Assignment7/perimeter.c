#include<stdio.h>
void perimeter();
void main()
{
 perimeter();
}
void perimeter()
{
     int l;
    int w;
    printf("Enter the length and width");
    scanf("%d %d",&l,&w);
    int p;
    p=2*(l+w);
    printf("perimeter of rectangle %d",p);
}