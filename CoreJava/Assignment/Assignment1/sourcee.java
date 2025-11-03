class Employee
{
int ID;
String name;
double salary;

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
} //Employee class ends here

class Test
{
public static void main(String args[])
{
Employee e1=new Employee();
e1.setId(1);
e1.setName("Nikita");
e1.setSalary(200000);
System.out.println("ID:"+e1.ID+"\nName:"+e1.name+"\nSalary:"+e1.salary);
}//main ends here
}//Test class ends here