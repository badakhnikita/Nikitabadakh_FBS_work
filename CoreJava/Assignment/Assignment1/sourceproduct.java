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
}//Product class ends here;

class Test
{
public static void main(String args[])
{
 Product p1=new Product();
 p1.setProductid(1);
p1.setName("Milk");
p1.setPrice(40);
p1.setQuantity(3);
System.out.println("Id:"+p1.productid+"\nName:"+p1.name+"\nPrice:"+p1.price+"\nQuantity:"+p1.quantity);
} //mains ends here;
}//Test class ends here;

