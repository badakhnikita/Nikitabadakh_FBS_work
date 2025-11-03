class Hr
{
int id;
double salary,commision;
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

void setCommision(double c)
{
  this.commision=c;
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

double getCommision()
{
  return this.commision;
}
void display()
{
System.out.println("Id is"+this.id);
System.out.println("Name is"+this.name);
System.out.println("Salary is"+this.salary);
System.out.println("Commision is"+this.commision);
}

} //Hr class ends here;

class Test
{
public static void main(String args[])
{
  Hr h1=new Hr();
Hr h2=new Hr();

  h1.setId(1);
h1.setName("Nikita");
h1.setSalary(20000.36);
h1.setCommision(3000);
 h2.setId(2);
h2.setName("Rikita");
h2.setSalary(200000.36);
h2.setCommision(30000);
h1.getId();
h1.getName();
h1.getSalary();
h1.getCommision();
h2.getId();
h2.getName();
h2.getSalary();
h2.getCommision();
h1.display();
h2.display();
//System.out.println("ID:"+h1.id+"\nName:"+h1.name+"\nSalary:"+h1.salary+"\nCommision"+h1.commision);

} //main ends here;

} //Test class ends here;
