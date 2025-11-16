package Assignment0;
abstract class Employee
{
int ID;
String name;
double salary;

Employee()
{
System.out.println(" Employee default Constructor called");
this.ID=1;
this.name="Nikita";
this.salary=200000;
}
Employee(int i,String str,double s)
{
System.out.println("Employee parameterized Constructor called");
this.ID=i;
this.name=str;
this.salary=s;
}

void setId(int i)
{
this.ID=i;
}

void setName(String n)
{
this.name=n;
}

void setSalary(int s)
{
this.salary=s;
}

int getId()
{
return this.ID;
}
String getName()
{
 return this.name;
}
double getSalary()
{
return this.salary;
}

//void display()
//{
//System.out.println("Id is"+this.ID);
//System.out.println("Name is"+this.name);
//System.out.println("Salary is"+this.salary);
//}
public String tosString()
{
	return "\n Id is"+this.ID+"\n Name is"+this.name+"\n Salary is"+this.salary;
}
abstract double calSalary();

} //Employee class ends here

class Hr extends Employee
{
double commision;

Hr()
{
super();
System.out.println(" Hr default Constructor called");
this.commision=4000;
}
Hr(int i,String str,double s,double c)
{
super(i,str,s);
System.out.println("Hr parameterized Constructor called");
 
this.commision=c;
}


void setCommision(double c)
{
  this.commision=c;
}

double getCommision()
{
  return this.commision;
}
//void display()
//{
//super.display();
//System.out.println("Commision is"+this.commision);
//}
public String toString()
{
  super.toString();
  return "\n commision is"+this.commision;
}
double calSalary()
{
 return salary+commision;
}

} //Hr class ends here;

class SalesManager extends Employee
{
double incentive, target;
SalesManager()
{
super();
System.out.println(" SalesManager default Constructor called");
this.incentive=4500;
this.target=3000;
}
SalesManager(int i,String str,double s,double in,double t)
{
super(i,str,s);
System.out.println("SalesManager parameterized Constructor called");
this.incentive=in;
this.target=t;
}


void setIncentive(double c)
{
  this.incentive=c;
}
void setTarget(double t)
{
   this.target=t;
}

double getIncentive()
{
  return this.incentive;
}
double getTarget()
{
  return this.target;
}

//void display()
//{
// super.display();
//System.out.println("Incentive is"+this.incentive);
//System.out.println("Target is"+this.target);
//}
public String toString()
{
	super.toString();
	return "\n Incentive is"+this.incentive+"\n Target is"+this.target;
}
double calSalary()
{
 return salary+incentive;
}

} //SalesManager class ends here;

class Admin extends Employee
{
double allowance;
Admin()
{
 super();
System.out.println(" Admin  default Constructor called");
this.allowance=2000;
}
Admin(int i,String str,double s,double a)
{
super(i,str,s);
System.out.println("Admin parameterized Constructor called");
this.allowance=a;
}


void setAllowance(double a)
{
  this.allowance=a;
}
double getAllowance()
{
  return this.allowance;
}

//void display()
//{
//super.display();
//System.out.println("Allowance is"+this.allowance);
//}
public String toString()
{
	super.toString();
	return "allowance is"+this.allowance;
}
double calSalary()
{
 return salary+allowance;
}

} //Admin class ends here;

class AreaSalesManager extends SalesManager
{
 String areaName;
 AreaSalesManager()
{
 super();
 System.out.println("AreaSalesManager default constructor called");
 this.areaName="Pune";
}
AreaSalesManager(int i,String str,double s,double in,double t,String a)
{
 super(i,str,s,in,t);
 System.out.println("AreaSalesManager parameterized constructor called");
 this.areaName=a;
}

void setAreaName(String a1)
{
 this.areaName=a1;
}
 String getAreaName()
{
 return this.areaName;
}
// void display()
//{
// super.display();
// System.out.println("Area name is"+this.areaName);
//}
 public String toString()
 {
	 super.toString();
	 return "Area name is"+this.areaName;
 }
}//AreaSalesManager class end here;
 class Test5
{
 public static void main(String args[])
{
 
Employee e1;//generic reference;
//e1=new Employee(101,"Nikita",50000);
//e1.display();
//System.out.println("SALARY is"+e1.calSalary());
e1=new Hr(101,"Nikita",477,8748);
e1.toString();
System.out.println("SALARY is"+e1.calSalary());
e1=new SalesManager(101,"Nikita",64767,82487,8758);
e1.toString();
System.out.println("SALARY is"+e1.calSalary());
e1=new Admin(101,"Nikita",3563743,474767);
e1.toString();
System.out.println("SALARY is"+e1.calSalary());
e1=new AreaSalesManager(101,"Nikita",64767,82487,8758,"pune");
e1.toString();
}//main end here;
}//Test class end here;
 
