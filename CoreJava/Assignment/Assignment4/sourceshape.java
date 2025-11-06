class Shape
{
 
void area(int b,double h)
{
double c=(0.5)*b*h;
System.out.println("Area of Triangle"+c);
}
void area(int l,int b)
{
int d=l*b;
System.out.println("Area of Rectangle"+d);
}
void area(int r)
{
double f=3.14*r*r;
System.out.println("Area of Triangle"+f);
}
}//Shape class ends here;

class Test
{
public static void main(String args[])
{
Shape s1=new Shape();
int a=10;
int b=20;
double c=4.5;
s1.area(a,c);
s1.area(a,b);
s1.area(a);
}//main end here;
}//Test class end here;
