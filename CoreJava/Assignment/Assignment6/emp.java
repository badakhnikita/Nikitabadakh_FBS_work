class Employee
{
 int id;
String name;
double basicsalary;
static double companyBonusRate=5.5;
double totalsal;
 
Employee()
{
 this.id=1;
 this.name="Nikita";
 this.basicsalary=30000;
}
Employee(int i,String str,double s)
{
 this.id=i;
 this.name=str;
 this.basicsalary=s;
}

void setId(int d)
{
 this.id=d;
}

void setName(String str1)
{
 this.name=str1;
}

void setBasicSalary(double s1)
{
 this.basicsalary=s1;
}

static void setCompanyBonusRate(int c)
{
  companyBonusRate=c;
}

int getId()
{
 return this.id;
}

String setName()
{
 return this.name;
}

double setBasicSalary()
{
 return this.basicsalary;
}

 double setCompanyBonusRate()
{
  return this.companyBonusRate;
}

void calculateTotalSalary()
{
 
totalsal=basicsalary+(basicsalary+companyBonusRate/100);
}
void display()
{
 System.out.println("id:"+this.id);
System.out.println("name:"+this.name);
System.out.println("basicsalary:"+this.basicsalary);
System.out.println("company bonus rate:"+this.companyBonusRate);
System.out.println("total salary:"+totalsal);
}
}//employee class ends here;

class Test
{
public static void main(String args[])
{
 Employee e1=new Employee();
 Employee e2=new Employee(1,"nikita",50000);
 Employee.setCompanyBonusRate(6);
e1.calculateTotalSalary();
e2.calculateTotalSalary();
 e1.display();
 e2.display();
}//main end here
}///class test end here

 
 