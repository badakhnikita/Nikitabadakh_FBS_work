package Assignment0;

 class Defence {
	 String nameOfHead;
	 int noOfMission;
	 double budget;
	 int noOfDept;
	 String headQuarterLocation;
	 String countryName;
	 int manpowercount;
	 
	 Defence()
	{
	 System.out.println("Defence default constructor called");
	 this.nameOfHead="abc";
	 this.noOfMission=4;
	 this.budget=500000;
	 this.noOfDept=10;
	 this.headQuarterLocation="xyz";
	 this.countryName="India";
	 this.manpowercount=1000;
	}
	Defence(String n,int n1,double b,int d,String h,String c,int m)
	{
	 System.out.println("Defence default constructor called");
	 this.nameOfHead=n;
	 this.noOfMission=n1;
	 this.budget=b;
	 this.noOfDept=d;
	 this.headQuarterLocation=h;
	 this.countryName=c;
	 this.manpowercount=m;
	}
	public String getNameOfHead() {
		return nameOfHead;
	}
	public void setNameOfHead(String nameOfHead) {
		this.nameOfHead = nameOfHead;
	}
	public int getNoOfMission() {
		return noOfMission;
	}
	public void setNoOfMission(int noOfMission) {
		this.noOfMission = noOfMission;
	}
	public double getBudget() {
		return budget;
	}
	public void setBudget(double budget) {
		this.budget = budget;
	}
	public int getNoOfDept() {
		return noOfDept;
	}
	public void setNoOfDept(int noOfDept) {
		this.noOfDept = noOfDept;
	}
	public String getHeadQuarterLocation() {
		return headQuarterLocation;
	}
	public void setHeadQuarterLocation(String headQuarterLocation) {
		this.headQuarterLocation = headQuarterLocation;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public int getManpowercount() {
		return manpowercount;
	}
	public void setManpowercount(int manpowercount) {
		this.manpowercount = manpowercount;
	}
   void display()
   {
	  System.out.println("Name of head is"+this.nameOfHead);
	  System.out.println("No of Mission is"+this.noOfMission);
	  System.out.println("Budget is "+this.budget);
	  System.out.println("No of dept is"+this.noOfDept);
	  System.out.println("Head quarter location is"+this.headQuarterLocation);
	  System.out.println("Country name is"+this.countryName);
	  System.out.println("man power count is"+this.manpowercount);	
}
 }
 class Army extends Defence
 {
	 int noOfTank;
	 int noOfGuns;
	 int noOfBatallin;
	 Army()
	 {
		 super();
		 System.out.println("Army default constructor called");
		 this.noOfTank=5;
		 this.noOfGuns=100;
		 this.noOfBatallin=6;
	 }
	 Army(String n,int n1,double b,int d,String h,String c,int m,int t,int g,int l)
	 {
		 super(n,n1,b,d,h,c,m);
		 System.out.println("Army parameterized constructor called");
		 this.noOfTank=t;
		 this.noOfGuns=g;
		 this.noOfBatallin=l;
	 }
	public int getNoOfTank() {
		return noOfTank;
	}
	public void setNoOfTank(int noOfTank) {
		this.noOfTank = noOfTank;
	}
	public int getNoOfGuns() {
		return noOfGuns;
	}
	public void setNoOfGuns(int noOfGuns) {
		this.noOfGuns = noOfGuns;
	}
	public int getNoOfBatallin() {
		return noOfBatallin;
	}
	public void setNoOfBatallin(int noOfBatallin) {
		this.noOfBatallin = noOfBatallin;
	}
	 void display()
	 {
		super.display();
		System.out.println("no of tanks:"+this.noOfTank);
		System.out.println("no of guns:"+this.noOfGuns);
		System.out.println("no of batallin"+this.noOfBatallin);
	 }
 }
 class Navy extends Defence
 {
	 int noOfShips;
	 int noOfSubmarine;
	 int noOfTorpedoes;
	  Navy()
	  {
		  super();
		 System.out.println("Navy Default constructor called");
		 this.noOfShips=6;
		 this.noOfSubmarine=6;
		 this.noOfTorpedoes=5;
	  }
	  Navy(String n,int n1,double b,int d,String h,String c,int m,int s,int r,int t)
	  {
		  super(n,n1,b,d,h,c,m);
		 System.out.println("Navy parameterized constructor called");
		 this.noOfShips=s;
		 this.noOfSubmarine=r;
		 this.noOfTorpedoes=t;
	  }
	public int getNoOfShips() {
		return noOfShips;
	}
	public void setNoOfShips(int noOfShips) {
		this.noOfShips = noOfShips;
	}
	public int getNoOfSubmarine() {
		return noOfSubmarine;
	}
	public void setNoOfSubmarine(int noOfSubmarine) {
		this.noOfSubmarine = noOfSubmarine;
	}
	public int getNoOfTorpedoes() {
		return noOfTorpedoes;
	}
	public void setNoOfTorpedoes(int noOfTorpedoes) {
		this.noOfTorpedoes = noOfTorpedoes;
	}
	
	void display()
	{
		super.display();
		System.out.println("No of ships"+this.noOfShips);
		System.out.println("No of submarine"+this.noOfSubmarine);
		System.out.println("No of torpedoes"+this.noOfTorpedoes);
	}
 }
 class AirForce extends Defence
 {
	 int noOfMission;
	 String aircraft;
	  AirForce()
	  {
		  super();
		  System.out.println("Airforce default constructor called");
		  this.noOfMission=5;
		  this.aircraft="xyz";
	  }
	  AirForce(String n,int n1,double b,int d,String h,String c,int m,int o,String a)
	  {
		  super(n,n1,b,d,h,c,m);
		  System.out.println("Airforce parameterized constructor called");
		  this.noOfMission=o;
		  this.aircraft=a;
	  }
	public int getNoOfMission() {
		return noOfMission;
	}
	public void setNoOfMission(int noOfMission) {
		this.noOfMission = noOfMission;
	}
	public String getAircraft() {
		return aircraft;
	}
	public void setAircraft(String aircraft) {
		this.aircraft = aircraft;
	}
	void display()
	{
		super.display();
		System.out.println("no of mission is"+this.noOfMission);
		System.out.println("aircraft name"+this.aircraft);
	}
 }
class Test
{
	public static void main(String[] args) {
		// TODO Auto-generated method stub
      Army a1=new Army();
      a1.display();
     Navy n1=new Navy();
     n1.display();
     AirForce f1=new AirForce();
     f1.display();
	}

}
