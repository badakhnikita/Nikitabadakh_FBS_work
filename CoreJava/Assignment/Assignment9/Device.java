package Assignment0;

abstract class Device
{
 String brand;
 String model;
 double  price;
 String color;

Device()
{
 System.out.println("Device default constructor called");
 this.brand="apple";
 this.model="a889";
this.price=3678;
this.color="black";
}
 
Device(String b,String m,double p,String c)
{
 System.out.println("Device parameterized constructor called");
 this.brand=b;
 this.model=m;
this.price=p;
this.color=c;
}

void setBrand(String b1)
{
 this.brand=b1;
}

void setModel(String m1)
{
this.model=m1;
}

void setPrice(double p)
{
this.price=p;
}

void setColor(String c1)
{
 this.color=c1;
}

 String getBrand()
{
 return this.brand;
}

String getModel()
{
return this.model;
}

double getPrice()
{
return this.price;
}

String getColor()
{
 return this.color;
}

//void display()
//{
//System.out.println("Brand name is"+this.brand);
//System.out.println("Model name is"+this.model);
//System.out.println("price is "+this.price);
//System.out.println("color is"+this.color);
//}

public String toString()
{
	return "\n Brand name is"+this.brand+"\n Model name is "+this.model+"\n price is"+this.price+"\n color is"+this.color;
}
abstract double calculateDiscount();
//{
//    return price * 0.05; 
//}

}//Device class end here;

class Mobile extends Device
{
 int storage;
int cameraResolution;

Mobile()
{
super();
System.out.println("Mobile default constructor called");
this.storage=64;
this.cameraResolution=64;
}

Mobile(String b,String m,double p,String c,int s,int r)
{
super(b,m,p,c);
System.out.println("Mobile parameterized constructor called");
this.storage=s;
this.cameraResolution=r;
}

void setStorage(int s1)
{
 this.storage=s1;
}

void setCameraResolution(int r1)
{
 this.cameraResolution=r1;
}

int getStorage()
{
 return this.storage;
}

int getCameraResolution()
{
 return this.cameraResolution;
}

//void display()
//{
//super.display();
//System.out.println("Storage:"+this.storage);
//System.out.println("Camera resolution:"+this.cameraResolution);
//}
public String toString()
{
	super.toString();
	return "\n storage:"+this.storage+"\n camera resolution"+this.cameraResolution;
}
double calculateDiscount()
{
    return price * 0.10; 
}

}//Mobile class ends here;

class Laptop extends Device
{
int ram;
double screensize;
Laptop()
{
super();
System.out.println("Laptop default constructor called");
this.ram=64;
this.screensize=12.5;
}

Laptop(String b,String m,double p,String c,int r,double s)
{
super(b,m,p,c);
System.out.println("Laptop parameterized constructor called");
this.ram=r;
this.screensize=s;
}

void setRam(int r1)
{
 this.ram=1;
}

void setScreensize(int s1)
{
 this.screensize=s1;
}

int getRam()
{
 return this.ram;
}

double getScreensize()
{
 return this.screensize;
}

//void display()
//{
//super.display();
//System.out.println("ram:"+this.ram);
//System.out.println("screen size:"+this.screensize);
//}

public String toString()
{
	super.toString();
	return "\n ram:"+this.ram+"\n screen size:"+this.screensize;
}
double calculateDiscount()
{
    return price * 0.15; 
}

}//Laptop class ends here;

class Test10
{
public static void main(String args[])
{
	Device d1;
//	d1=new Device();
//	d1.display();
//	System.out.println(d1.calculateDiscount());
d1=new Mobile();
d1.toString();
d1=new Mobile("Apple","a746",75748,"white",128,64);
d1.toString();
System.out.println(d1.calculateDiscount());
d1=new Laptop();
d1.toString();
d1=new Laptop("Apple","a1334",94788,"black",128,12);
d1.toString();
System.out.println(d1.calculateDiscount());
}//main end here;
}//class Test end here;

