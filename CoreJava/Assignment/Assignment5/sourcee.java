import java.util.Scanner;
class Employee
{
int ID;
String name;
double salary;

Employee()
{
this.ID=1;
this.name="Nikita";
this.salary=200000;
}
Employee(int i,String str,double s)
{
System.out.println("parameterized Constructor called");
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

class Test
{
public static void main(String args[])
{
Scanner sc=new Scanner(System.in);
System.out.println("Enter the id:");
int id=sc.nextInt();
sc.nextLine();
System.out.println("Enter the hr name:");
String str=sc.nextLine();
System.out.println("Enter the salary of hr:");
double s=sc.nextDouble();
Employee e1=new Employee();
Employee e2=new Employee(id,str,s);
//e1.setId(1);
//e1.setName("Nikita");
//e1.setSalary(200000);
//e2.setId(2);
//e2.setName("Rikita");
//e2.setSalary(2000000);
e1.display();
e2.display();
if(e1.getSalary()>e2.getSalary())
{
System.out.println("e1 salary is greater");
}
else
{
System.out.println("e2 salary is greater");

}
//System.out.println("ID:"+e1.ID+"\nName:"+e1.name+"\nSalary:"+e1.salary);
}//main ends here
}//Test class ends here