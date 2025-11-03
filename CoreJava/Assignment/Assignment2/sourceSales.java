class SalesManager
{
int id;
double salary,incentive, target;
String name;
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

void setIncentive(double c)
{
  this.incentive=c;
}
void setTarget(double t)
{
   this.target=t;
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
System.out.println("Id is"+this.id);
System.out.println("Name is"+this.name);
System.out.println("Salary is"+this.salary);
System.out.println("Incentive is"+this.incentive);
System.out.println("Target is"+this.target);
}

} //SalesManager class ends here;

class Test
{
public static void main(String args[])
{
  SalesManager s1=new SalesManager();
  SalesManager s2=new SalesManager();
s1.setId(1);
s1.setName("Nikita");
s1.setSalary(20000.36);
s1.setIncentive(3000);
s1.setTarget(5000.89);
s2.setId(2);
s2.setName("Rikita");
s2.setSalary(21000.36);
s2.setIncentive(4000);
s2.setTarget(6000.89);
s1.getId();
s1.getName();
s1.getSalary();
s1.getIncentive();
s1.getTarget();
s2.getId();
s2.getName();
s2.getSalary();
s2.getIncentive();
s2.getTarget();
s1.display();
s2.display();
//System.out.println("ID:"+s1.id+"\nName:"+s1.name+"\nSalary:"+s1.salary+"\nIncentive"+s1.incentive+"\nTarget"+s1.target);

} //main ends here;

} //Test class ends here;
