class Product
{
  int productid,price,quantity;
  String name;
 void setProductid(int id)
{
  this.productid=id;
}

void  setName(String str)
{
 this.name=str;
}

 void setPrice(int p)
{
 this.price=p;
}

void setQuantity(int q)
{
 this.quantity=q;
}
int getProductid()
{
  return this.productid;
}

String getName()
{
 return this.name;
}

 double getPrice()
{
 return this.price;
}

int getQuantity()
{
 return this.quantity;
}

void display()
{
 System.out.println("Productid is"+this.productid);
System.out.println("name is"+this.name);
System.out.println("price is"+this.price);
System.out.println("Quantity is"+this.quantity);
}
}//Product class ends here;

class Test
{
public static void main(String args[])
{
 Product p1=new Product();
 Product p2=new Product();
p1.setProductid(1);
p1.setName("Milk");
p1.setPrice(40);
p1.setQuantity(3);
p2.setProductid(2);
p2.setName("Sugar");
p2.setPrice(50);
p2.setQuantity(4);
p1.getProductid();
p1.getName();
p1.getPrice();
p1.getQuantity();
p2.getProductid();
p2.getName();
p2.getPrice();
p2.getQuantity();
p1.display();
p2.display();
//System.out.println("Id:"+p1.productid+"\nName:"+p1.name+"\nPrice:"+p1.price+"\nQuantity:"+p1.quantity);
} //mains ends here;
}//Test class ends here;

