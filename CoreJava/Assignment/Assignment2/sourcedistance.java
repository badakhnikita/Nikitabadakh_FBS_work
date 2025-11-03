class Distance
{
int km,m;

void setKm(int k)
{	
 this.km=k;
}

void setM(int m1)
{
 this.m=m1;
}
int getKm()
{	
 return this.km;
}

int getM()
{
 return this.m;
}

void display()
{
System.out.println("Kilometer:"+this.km+"\nMeter:"+this.m);

}

}//Distance class ends here;

class Test
{
public static void main(String args[])
{
  Distance d1=new Distance();
  Distance d2=new Distance();
  d1.setKm(5);
  d1.setM(500);
  d2.setKm(6);
  d2.setM(700);
  d1.getKm();
  d1.getM();
  d2.getKm();
  d2.getM();
  d1.display();
  d2.display();
 //System.out.println("Kilometer:"+d1.km+"\nMeter:"+d1.m);

} //main ends here;

} //Test class ends here;

 