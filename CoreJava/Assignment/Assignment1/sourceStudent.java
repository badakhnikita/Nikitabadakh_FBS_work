class Student
{
 int rollno,marks;
 String name;
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
}//Student class ends here;

class Test
{
public static void main(String args[])
{
 Student s1=new Student();
 s1.setRollno(1);
s1.setName("Nikita");
s1.setMarks(40);
System.out.println("Rollno:"+s1.rollno+"\nName:"+s1.name+"\nMarks:"+s1.marks);
} //mains ends here;
}//Test class ends here;

