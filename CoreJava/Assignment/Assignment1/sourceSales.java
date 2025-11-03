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
} //SalesManager class ends here;

class Test
{
public static void main(String args[])
{
  SalesManager s1=new SalesManager();
  s1.setId(1);
s1.setName("Nikita");
s1.setSalary(20000.36);
s1.setIncentive(3000);
s1.setTarget(5000.89);
System.out.println("ID:"+s1.id+"\nName:"+s1.name+"\nSalary:"+s1.salary+"\nIncentive"+s1.incentive+"\nTarget"+s1.target);

} //main ends here;

} //Test class ends here;
