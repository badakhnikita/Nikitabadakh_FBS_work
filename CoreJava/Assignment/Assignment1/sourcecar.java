class Car
{
 String model,brand,color;
int price,fuelcapacity;

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
}//Car class ends here;

class Test
{
public static void main(String args[])
{
 Car c1=new Car();
c1.setModel("Ms236789");
c1.setBrand("MarutiSuzuki");
c1.setColor("White");
c1.setPrice(400000);
c1.setFuelcapacity(600);
System.out.println("Model:"+c1.model+"\nBrand:"+c1.brand+"\nColor:"+c1.color+"\nPrice:"+c1.price+"\nFuelcapacity:"+c1.fuelcapacity);
} //mains ends here;
}//Test class ends here;

