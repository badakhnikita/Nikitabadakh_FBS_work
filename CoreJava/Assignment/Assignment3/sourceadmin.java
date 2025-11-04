class Admin
{
int id;
double salary,allowance;
String name;
Admin()
{
this.id=101;
this.name="Vijeta";
this.salary=299990;
this.allowance=2000;
}
Admin(int i,String str,double s,double a)
{
this.id=i;
this.name=str;
this.salary=s;
this.allowance=a;
}

void setId(int i)
{
  this.id=i;
}

void setName(String str)
{
this.name=str;
}

void setSalary(double s)
{
  this.salary=s;
}

void setAllowance(double a)
{
  this.allowance=a;
}
int getId()
{
  return this.id;
}

String getName()
{
return this.name;
}

double getSalary()
{
  return this.salary;
}

double getAllowance()
{
  return this.allowance;
}

void display()
{
System.out.println("Id is"+this.id);
System.out.println("Name is"+this.name);
System.out.println("Salary is"+this.salary);
System.out.println("Allowance is"+this.allowance);
}

} //Hr class ends here;

class Test
{
public static void main(String args[])
{
  Admin a1=new Admin();
Admin a2=new Admin(101,"nikita",256647,8999);
//a1.setId(1);
//a1.setName("Nikita");
//a1.setSalary(21000.50);
//a1.setAllowance(4000);
//a2.setId(2);
//a2.setName("Rikita");
//a2.setSalary(22000.50);
//a2.setAllowance(5000);
//a1.getId();
//a1.getName();
//a1.getSalary();
//a2.getAllowance();
//a2.getId();
//a2.getName();
//a2.getSalary();
//a2.getAllowance();
a1.display();
a2.display();
//System.out.println("ID:"+a1.id+"\nName:"+a1.name+"\nSalary:"+a1.salary+"\nAllowance"+a1.allowance);

} //main ends here;

} //Test class ends here;
