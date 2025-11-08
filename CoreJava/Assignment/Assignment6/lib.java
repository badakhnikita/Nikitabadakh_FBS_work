class LibraryUser
{
 String name;
 int daysLate,totalfine;
 static int finePerDay=100;

 LibraryUser()
{
 this.name="Nikita";
 this.daysLate=4;
 }

LibraryUser(String str,int d)
{
 this.name=str;
 this.daysLate=d;
 }

 void setName(String str1)
{
 this.name=str1;
}

void setDaysLate(int l)
{
 this.daysLate=l;
}

void setFinePerDay(int f)
{
 this.finePerDay=f;
}

 String getName()
{
 return this.name;
}

int getDaysLate()
{
 return this.daysLate;
}

int getFinePerDay()
{
 return this.finePerDay;
}

void calculateFine()
{
 totalfine=daysLate*finePerDay;
}

void display()
{
System.out.println("Name:"+this.name);
System.out.println("Days Late:"+this.daysLate);
System.out.println("fine per day:"+this.finePerDay);
System.out.println("total fine:"+this.totalfine);
}
}//library class end here

class Test
{
 public static void main(String args[])
{
 LibraryUser l1=new LibraryUser();
 LibraryUser l2=new LibraryUser("nikita",5);
 l1.calculateFine();
l2.calculateFine();
 l1.display();
l2.display();
}//main ends here;
}//class Test ends here;
 
 
