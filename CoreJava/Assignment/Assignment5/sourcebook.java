import java.util.Scanner;
class Book
{
  int ISBN,price;
  String name,category;
Book()
{
System.out.println("Default constructor");
this.ISBN=1;
this.name="abc";
this.price=300;
this.category="historical";
}
Book(int i,String str,int p,String c)
{
System.out.println("parameterized constructor");
this.ISBN=i;
this.name=str;
this.price=p;
this.category=c;
}

 void setIsbn(int id)
{
  this.ISBN=id;
}

void  setName(String str)
{
 this.name=str;
}

 void setPrice(int p)
{
 this.price=p;
}

void setCategory(String c)
{
 this.category=c;
}
 int getIsbn()
{
  return this.ISBN;
}

String  getName()
{
 return this.name;
}

 double getPrice()
{
 return this.price;
}

String getCategory()
{
 return this.category;
}

void display()
{
System.out.println("ISBN is"+this.ISBN);
System.out.println("Name is"+this.name);
System.out.println("price is"+this.price);
System.out.println("category is"+this.category);
}
}//Book class ends here;

class Test
{
public static void main(String args[])
{
  Scanner sc=new Scanner(System.in);
System.out.println("enter the isbn");
 int i=sc.nextInt();
 sc.nextLine();
 System.out.println("enter the name");
String str=sc.nextLine();
System.out.println("enter the price");
int p=sc.nextInt();
 sc.nextLine();
 System.out.println("enter the category");
String str1=sc.nextLine();
 Book b1=new Book();
 Book b2=new Book(i,str,p,str1);
//b1.setIsbn(1);
//b1.setName("chatrapati");
//b1.setPrice(400);
//b1.setCategory("historical");
//b2.setIsbn(2);
//b2.setName("chatrapati");
//b2.setPrice(400);
//b2.setCategory("historical");
//b1.getIsbn();
//b1.getName();
//b1.getPrice();
//b1.getCategory();
//b2.getIsbn();
//b2.getName();
//b2.getPrice();
//b2.getCategory();
b1.display();
b2.display();
//System.out.println("ISBN:"+b1.ISBN+"\nName:"+b1.name+"\nPrice:"+b1.price+"\nCategoryy:"+b1.category);
} //mains ends here;
}//Test class ends here;

