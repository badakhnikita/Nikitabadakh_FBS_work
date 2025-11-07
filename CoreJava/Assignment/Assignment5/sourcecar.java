import java.util.Scanner;
class Car
{
 String model,brand,color;
int price,fuelcapacity;
Car()
{
System.out.println("Default constructor");
this.model="ms87347";
this.brand="maruti suzuki";
this.color="white";
this.price=400000;
this.fuelcapacity=400;
}
Car(String m,String b,String c,int p,int f)
{
System.out.println("Parameterized constructor");
this.model=m;
this.brand=b;
this.color=c;
this.price=p;
this.fuelcapacity=f;
}

void setModel(String m)
{
 this.model=m;
}

void setBrand(String b)
{
 this.brand=b;
}

void setColor(String c)
{
 this.color=c;
}

void setPrice(int p)
{
this.price=p;
}

void setFuelcapacity(int c)
{
this.fuelcapacity=c;
}
String getModel()
{
 return this.model;
}

String getBrand()
{
 return this.brand;
}

String getColor()
{
 return this.color;
}

int getPrice()
{
return this.price;
}

int getFuelcapacity()
{
return this.fuelcapacity;
}
void display()
{
  System.out.println("Model is"+this.model);
 System.out.println("Brand is "+this.brand);
 System.out.println("color is"+this.color);
 System.out.println("price is"+this.price);
 System.out.println("Fuelcapacity"+this.fuelcapacity);
}
}//Car class ends here;

class Test
{
public static void main(String args[])
{
Scanner sc=new Scanner(System.in);
 System.out.println("enter the model");
String str=sc.nextLine();
System.out.println("enter the brand");
String b=sc.nextLine();
System.out.println("enter the color");
String c=sc.nextLine();
System.out.println("enter the price");
 int p=sc.nextInt();
System.out.println("enter the fuelcapacity");
 int f=sc.nextInt();
 Car c1=new Car();
Car c2=new Car(str,b,c,p,f);
//c1.setModel("Ms236789");
//c1.setBrand("MarutiSuzuki");
//c1.setColor("White");
//c1.setPrice(400000);
//c1.setFuelcapacity(600);
//c2.setModel("Ms236780");
//c2.setBrand("MarutiSuzuki");
//c2.setColor("White");
//c2.setPrice(4000000);
//c2.setFuelcapacity(500);
//c1.getModel();
//c1.getBrand();
//c1.getColor();
//c1.getPrice();
//c1.getFuelcapacity();
//c2.getModel();
//c2.getBrand();
//c2.getColor();
//c2.getPrice();
//c2.getFuelcapacity();
c1.display();
c2.display();
System.out.println("Model:"+c1.model+"\nBrand:"+c1.brand+"\nColor:"+c1.color+"\nPrice:"+c1.price+"\nFuelcapacity:"+c1.fuelcapacity);
} //mains ends here;
}//Test class ends here;

