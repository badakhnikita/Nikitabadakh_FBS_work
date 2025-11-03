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
}//Distance class ends here;

class Test
{
public static void main(String args[])
{
  Distance d1=new Distance();
  d1.setKm(5);
  d1.setM(500);
  System.out.println("Kilometer:"+d1.km+"\nMeter:"+d1.m);

} //main ends here;

} //Test class ends here;

 