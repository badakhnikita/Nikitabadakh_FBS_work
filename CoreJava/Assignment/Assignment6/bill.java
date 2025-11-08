class ElectricityBill
{
  int customerId;
  String customerName;
  int unitconsumed;
  int result;
  static int rateperunit=5;
  
  ElectricityBill()
{
 this.customerId=1;
 this.customerName="Nikita";
 this.unitconsumed=40;
}

  ElectricityBill(int c,String n,int u)
{
 this.customerId=c;
 this.customerName=n;
 this.unitconsumed=u;
}

void setCustomerId(int i)
{
 this.customerId=i;
}

void setCustomerName(String str)
{
 this.customerName=str;
}

static void setRateperunit(int r)
{
 rateperunit=r;
}

void calculateBill()
{
 result=this.unitconsumed*rateperunit;
}

int getCustomerId()
{
 return this.customerId;
}

String setCustomerName()
{
 return this.customerName;
}

int getRateperunit()
{
 return rateperunit;
}

void display()
{
 System.out.println("Customer id:"+this.customerId);
 System.out.println("Customer name:"+this.customerName);
 System.out.println("Unit consumed:"+this.unitconsumed);
System.out.println("Rate per unit:"+this.rateperunit);
System.out.println("result:"+this.result);

}

}//Electricitybill class ends here;

class Test
{
public static void main(String args[])
{
 ElectricityBill b1=new ElectricityBill();
 ElectricityBill b2=new ElectricityBill(1,"Niki",45);
 //b1.setRateperunit(6);
ElectricityBill.setRateperunit(7);
b1.calculateBill();
b2.calculateBill();
b1.display();
b2.display();
 }//main ends here;
}//Test class ends here;



