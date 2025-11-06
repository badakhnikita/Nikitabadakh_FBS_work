class Calculator
{

 void add(int a,int b)
{
  System.out.println("function1 called");
 System.out.println("Addition is:"+(a+b));
}

void add(float a,float b)
{
System.out.println("function2 called");

System.out.println("Addition is:"+(a+b));

}

void add(float a,int b)
{
System.out.println("function3 called");

 System.out.println("Addition is:"+(a+b));
}

void add(double a,double b)
{
System.out.println("function4 called");

  System.out.println("Addition is:"+(a+b));

}

void sub(int a,int b)
{
  
 System.out.println(a-b);
}

void sub(float a,float b)
{

System.out.println(a-b);

}

void sub(float a,int b)
{
 System.out.println(a-b);
}

void sub(double a,double b)
{
   System.out.println(a-b);
}
void mul(int a,int b)
{
  
 System.out.println(a*b);
}

void mul(float a,float b)
{

System.out.println(a*b);

}

void mul(float a,int b)
{
 System.out.println(a*b);
}

void mul(double a,double b)
{
   System.out.println(a*b);
}
void div(int a,int b)
{
  
 System.out.println(a/b);
}

void div(float a,float b)
{

System.out.println(a/b);

}

void div(float a,int b)
{
 System.out.println(a/b);
}

void div(double a,double b)
{
   System.out.println(a/b);
}



}//Calculator class end here;

class Test
{
 public static void main(String args[])
{
Calculator c1=new Calculator();
int a=20,b=10;
float f=10.20f;
float f1=5.2f;
double d=20.3,d1=10.3;
c1.add(a,b);
c1.add(f,f1);
c1.add(f,a);
c1.add(d,d1);
c1.sub(a,b);
c1.sub(f,f1);
c1.sub(d,b);
c1.sub(d,d1);
c1.mul(a,b);
c1.mul(f,f1);
c1.mul(d,b);
c1.mul(d,d1);
c1.div(a,b);
c1.div(f,f1);
c1.div(d,b);
c1.div(d,d1);
}//main ends here
}//Test class ends here;