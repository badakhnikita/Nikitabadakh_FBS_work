package Assignment0;

abstract class Vehicle
{
 String brandname;
 int speed;
 String fueltype;
 
 Vehicle()
{
 System.out.println("Vehicle default constructor called");
 this.brandname="honda";
 this.speed=180;
 this.fueltype="petrol";
}

 Vehicle(String str,int m,String f)
{
 System.out.println("Vehicle parameterised constructor called");
 this.brandname=str;
 this.speed=m;
 this.fueltype=f;
}

void setBrandname(String str1)
{
 this.brandname=str1;
}

void setSpeed(int m1)
{
 this.speed=m1;
}

void setFueltype(String f1)
{
this.fueltype=f1;
}
 String getBrandname()
{
 return this.brandname;
}

int getSpeed()
{
 return this.speed;
}

String getFueltype()
{
return this.fueltype;
}

//void display()
//{
//System.out.println("Brand name is"+this.brandname);
//System.out.println(" Maximum Speed is"+this.speed);
//System.out.println("Fueltype is "+this.fueltype);
//}

public String toString()
{
	return "\n Brand name is"+this.brandname+"\n Maximum speed is"+this.speed+"\n Fuel Type"+this.fueltype;
}
abstract void brake();
}//Vehicle class end here;

class Car extends Vehicle
{

 int seatingCapacity;
 String modelName;
 Car()
{
super();
System.out.println("Car default constructor called");
this.seatingCapacity=4;
this.modelName="shift";
}
 Car(String str,int m,String f,int s,String str2)
{
super(str,m,f);
System.out.println("Car parameterized  constructor called");
this.seatingCapacity=s;
this.modelName=str2;
}

void setSeatingCapacity(int s1)
{
 this.seatingCapacity=s1;
}

void setModelName(String str1)
{
 this.modelName=str1;
}

int getSeatingCapacity()
{
 return this.seatingCapacity;
}

String getModelName()
{
 return this.modelName;
}

//void display()
//{
//super.display();
//System.out.println("Seating capacity is"+this.seatingCapacity);
//System.out.println("Model name is"+this.modelName);
//}

public String toString()
{
	super.toString();
	return "\nSeating arrangement"+this.seatingCapacity+"\n Model name"+this.modelName;
}
void brake()
{
	System.out.println("drumb applied");
}
}//Car class end here;

class Bike extends Vehicle
{

int engineCapacity;

Bike()
{
super();
System.out.println("Bike default constructor called");
this.engineCapacity=50;
}

Bike(String str,int m,String f,int engineCapacity)
{
super(str,m,f);
System.out.println("Bike default constructor called");
this.engineCapacity=50;
}

void setEngineCapacity(int e)
{
 this.engineCapacity=e;
}

int getEngineCapacity()
{
 return this.engineCapacity;
}

//void display()
//{
//super.display();
//System.out.println("Engine capacity is"+this.engineCapacity);
//}
public String toString()
{
	super.toString();
	return "\n Engine capacity is"+this.engineCapacity;
}
void brake()
{
	System.out.println("disc applied");
}
}//bike class end here;

class Test6
{
public static void main(String args[])
{
Vehicle v1;
//v1=new Vehicle();
//v1.display();
//v1.brake();
v1=new Car();
v1.toString();
v1=new Car("Honda",56,"petrol",4,"Shift");
v1.toString();
v1.brake();
v1=new Bike();
v1.toString();
v1=new Bike("Honda",56,"petrol",40);
v1.toString();
v1.brake();
}//main end here;
}//test class end here;



