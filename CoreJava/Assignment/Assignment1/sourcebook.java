class Book
{
  int ISBN,price;
  String name,category;
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
}//Book class ends here;

class Test
{
public static void main(String args[])
{
 Book b1=new Book();
b1.setIsbn(1);
b1.setName("chatrapati");
b1.setPrice(400);
b1.setCategory("historical");
System.out.println("ISBN:"+b1.ISBN+"\nName:"+b1.name+"\nPrice:"+b1.price+"\nCategoryy:"+b1.category);
} //mains ends here;
}//Test class ends here;

