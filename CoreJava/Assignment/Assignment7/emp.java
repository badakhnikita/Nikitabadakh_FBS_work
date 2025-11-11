import java.util.Scanner;
class Employee
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

void display()
{
System.out.println("Id is"+this.ID);
System.out.println("Name is"+this.name);
System.out.println("Salary is"+this.salary);
}
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
void display()
{
super.display();
System.out.println("Commision is"+this.commision);
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

void display()
{
 super.display();
System.out.println("Incentive is"+this.incentive);
System.out.println("Target is"+this.target);
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

void display()
{
super.display();
System.out.println("Allowance is"+this.allowance);
}

} //Admin class ends here;

class Test
{
 public static void main(String args[])
{
 
Hr h1=new Hr();
h1.display();
Hr h2=new Hr(101,"Nikita",477,8748);
h2.display();
SalesManager s1=new SalesManager();
s1.display();
SalesManager s2=new SalesManager(101,"Nikita",64767,82487,8758);
s2.display();
Admin a1=new Admin();
a1.display();
Admin a2=new Admin(101,"Nikita",3563743,474767);
a2.display();
}//main end here;
}//Test class end here;