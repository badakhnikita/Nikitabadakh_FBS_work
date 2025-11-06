class Student
{
int rollno;
String name;
int percentage;
Student(int r,String str,int p)
{
this.rollno=r;
this.name=str;
this.percentage=p;
}
}//student class ends here;

class Employee
{
 int id;
 String name;
 double annualsalary;
Employee(int i,String str,double a)
{
 this.id=i;
 this.name=str;
 this.annualsalary=a;
}
}//employee class ends here;

class Bank
{
 
 void approveLoan(Student s)
{
 if(s.percentage>80)
{
 System.out.println("2 lakh loan approved");
}
else if(s.percentage>=60 && s.percentage<=80)
{
System.out.println("1 lakh loan approved");
}
else if(s.percentage>=40 && s.percentage<=60)
{
 System.out.println("50 thousand loan approved");
}
else
{
 System.out.println("No loan approved");
}
}
void approveLoan(Employee e)
{
 if(e.annualsalary>12)
{
 System.out.println("7 lakh loan approved");
}
else if(e.annualsalary>=10 && e.annualsalary<=12)
{
System.out.println("6 lakh loan approved");
}
else if(e.annualsalary>=6 && e.annualsalary<=10)
{
 System.out.println("5 lakh loan approved");
}
else if(e.annualsalary>=4 && e.annualsalary<=6)
{
 System.out.println("4 lakh loan approved");
}

else
{
 System.out.println("No loan approved");
}
}
}//Bank class ends here;

class Test
{
 public static void main(String args[])
{
Bank b1=new Bank();
Student s1=new Student(1,"Nikita",89);
Employee e1=new Employee(101,"Nikita",13);
b1.approveLoan(s1);
b1.approveLoan(e1);
}//main end here;
}//Test class end here;
