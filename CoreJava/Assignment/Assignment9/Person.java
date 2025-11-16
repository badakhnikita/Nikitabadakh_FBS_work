package Assignment0;

abstract class Person
{
    String name;
    int age;
    String gender;

    Person()
    {
        System.out.println("Person default constructor called");
        this.name = "Nikita";
        this.age = 21;
        this.gender = "Female";
    }

    Person(String name, int age, String gender)
    {
        System.out.println("Person parameterized constructor called");
        this.name = name;
        this.age = age;
        this.gender = gender;
    }

    void setName(String name)
    {
        this.name = name;
    }

    void setAge(int age)
    {
        this.age = age;
    }

    void setGender(String gender)
    {
        this.gender = gender;
    }

    String getName()
    {
        return this.name;
    }

    int getAge()
    {
        return this.age;
    }

    String getGender()
    {
        return this.gender;
    }

    abstract String role();
//    {
//        return "General Person";
//    }

//    void display()
//    {
//        System.out.println("Name: " + this.name);
//        System.out.println("Age: " + this.age);
//        System.out.println("Gender: " + this.gender);
//      
//    }
    public String toString()
    {
    	return "\n Name is"+this.name+"\n Age is"+this.age+"\n Gender is"+this.gender;
    }
} // Person end here

class Teacher extends Person
{
    String subject;
    double salary;

    Teacher()
    {
        super();
        System.out.println("Teacher default constructor called");
        this.subject = "Math";
        this.salary = 45000.50;
    }

    Teacher(String n, int a, String g, String subject, double salary)
    {
        super(n, a, g);
        System.out.println("Teacher parameterized constructor called");
        this.subject = subject;
        this.salary = salary;
    }

    String role()
    {
        return "Teacher";
    }

//    void display()
//    {
//        super.display();
//        System.out.println("Subject: " + this.subject);
//        System.out.println("Salary: " + this.salary);
//    }
  public String toString()
  {
	  super.toString();
	  return "\n subject is"+this.subject+"\n Salary is"+this.salary;  
  }
} // Teacher end here


class Student extends Person
{
    int rollNo;
    double marks;

    Student()
    {
        super();
        System.out.println("Student default constructor called");
        this.rollNo = 101;
        this.marks = 89.5;
    }

    Student(String n, int a, String g, int rollNo, double marks)
    {
        super(n, a, g);
        System.out.println("Student parameterized constructor called");
        this.rollNo = rollNo;
        this.marks = marks;
    }

    String role()
    {
        return "Student";
    }

//    void display()
//    {
//        super.display();
//        System.out.println("Roll No: " + this.rollNo);
//        System.out.println("Marks: " + this.marks);
//    }
    
    public String toString()
    {
    	super.toString();
    	return "\n Roll no:"+this.rollNo+"\n marks:"+this.marks;
    }
} // Student end here

class Employee1 extends Person
{
    int empId;
    double salary;

    Employee1()
    {
        super();
        System.out.println("Employee default constructor called");
        this.empId = 5001;
        this.salary = 55000.75;
    }

    Employee1(String n, int a, String g, int empId, double salary)
    {
        super(n, a, g);
        System.out.println("Employee parameterized constructor called");
        this.empId = empId;
        this.salary = salary;
    }

    String role()
    {
        return "Employee";
    }

//    void display()
//    {
//        super.display();
//        System.out.println("Employee ID: " + this.empId);
//        System.out.println("Salary: " + this.salary);
//    }
    public String toString()
    {
    	super.toString();
    	return "\n Employee id"+this.empId+"\n Salary is"+this.salary;
    }
} // Employee end here

class Test11
{
    public static void main(String args[])
    {
        Person p1;

        p1 = new Teacher("Raj", 35, "Male", "Physics", 60000);
        System.out.println("Polymorphism " + p1.role());
        p1.toString();

        p1 = new Student("Pooja", 20, "Female", 202, 92.5);
        System.out.println("Polymorphism " + p1.role());
        p1.toString();
        p1 = new Employee1("Amit", 28, "Male", 9001, 75000);
        System.out.println("Polymorphism " + p1.role());
        p1.toString();
    }
} //Test ends here
