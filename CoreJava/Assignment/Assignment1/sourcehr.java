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
} //Hr class ends here;

class Test
{
public static void main(String args[])
{
  Hr h1=new Hr();
  h1.setId(1);
h1.setName("Nikita");
h1.setSalary(20000.36);
h1.setCommision(3000);
System.out.println("ID:"+h1.id+"\nName:"+h1.name+"\nSalary:"+h1.salary+"\nCommision"+h1.commision);

} //main ends here;

} //Test class ends here;
