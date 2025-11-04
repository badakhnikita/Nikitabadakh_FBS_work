class Complex
{
 int real,imaginary;

 Complex()
{
 System.out.println("Default constructor");
 this.real=2;
this.imaginary=4;
}
 Complex(int r,int i)
{
 System.out.println("Parameterized constructor");
 this.real=r;
this.imaginary=i;
}

 void setReal(int r)
{
 this.real=r;
}
 
void setImg(int i)
{
 this.imaginary=i;
}
 int getReal()
{
 return this.real;
}
 
int getImg()
{
 return this.imaginary;
}
  void display()
{
System.out.println("Complex Number:"+this.real+"+"+this.imaginary+"i");


}
}//Complex class ends here;

class Test
{
public static void main(String args[])
{
  Complex c1=new Complex();
  Complex c2=new Complex(7,8);
  //c1.setReal(5);
  //c1.setImg(6);
  //c2.setReal(4);
  //c2.setImg(9);
  //c1.getReal();
  //c2.getImg();
  c1.display();
  c2.display();
  //System.out.println("Complex Number:"+c1.real+"+"+c1.imaginary+"i");

} //main ends here;

} //Test class ends here;

