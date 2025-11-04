class Student
{
 int rollno,marks;
 String name;

 Student()
{
this.rollno=1;
this.name="vaishnavi";
this.marks=50;
}
Student(int r,String str,int m)
{
this.rollno=r;
this.name=str;
this.marks=m;
}

 void setRollno(int r)
{
 this.rollno=r;
}

void  setName(String str)
{
 this.name=str;
}
 void setMarks(int m)
{
 this.marks=m;
}
 int getRollno()
{
 return this.rollno;
}

String getName()
{
 return this.name;
}
 int getMarks()
{
 return this.marks;
}

void display()
{
System.out.println("Roll no"+this.rollno);
System.out.println("Name is "+this.name);
System.out.println("Marks is"+this.marks);
}
}//Student class ends here;

class Test
{
public static void main(String args[])
{
 Student s1=new Student();
 Student s2=new Student(2,"nikita",60);
 //s1.setRollno(1);
 //s1.setName("Nikita");
 //s1.setMarks(40);
 //s2.setRollno(2);
 //s2.setName("Rikita");
// s2.setMarks(50);
// s1.getRollno();
 //s1.getName();
 //s1.getMarks();
 //s2.getRollno();
 //s2.getName();
 //s2.getMarks();
 s1.display();
 s2.display();
//System.out.println("Rollno:"+s1.rollno+"\nName:"+s1.name+"\nMarks:"+s1.marks);
} //mains ends here;
}//Test class ends here;

