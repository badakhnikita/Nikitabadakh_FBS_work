class Admin
{
int id;
double salary,allowance;
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

void setAllowance(double a)
{
  this.allowance=a;
}
} //Hr class ends here;

class Test
{
public static void main(String args[])
{
  Admin a1=new Admin();
  a1.setId(1);
a1.setName("Nikita");
a1.setSalary(21000.50);
a1.setAllowance(4000);
System.out.println("ID:"+a1.id+"\nName:"+a1.name+"\nSalary:"+a1.salary+"\nAllowance"+a1.allowance);

} //main ends here;

} //Test class ends here;
