package Assignment0;

abstract class Farmer 
{
	int farmerId;
	String farmerName;
	double landArea;
	String city;
	double annualIncome;
	int noOfEquipment;
	Farmer()
	{
		System.out.println("Farmer default constructor called");
		this.farmerId=2;
		this.farmerName="Nikita";
		this.landArea=2.5;
		this.city="malunja";
		this.annualIncome=500000;
		this.noOfEquipment=20;
	}
	Farmer(int i,String str,double a,String c,double n,int e)
	{
		System.out.println("Farmer parameterized constructor called");
		this.farmerId=i;
		this.farmerName=str;
		this.landArea=a;
		this.city=c;
		this.annualIncome=n;
		this.noOfEquipment=e;
	}
	public int getFarmerId() {
		return farmerId;
	}
	public void setFarmerId(int farmerId) {
		this.farmerId = farmerId;
	}
	public String getFarmerName() {
		return farmerName;
	}
	public void setFarmerName(String farmerName) {
		this.farmerName = farmerName;
	}
	public double getLandArea() {
		return landArea;
	}
	public void setLandArea(double landArea) {
		this.landArea = landArea;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public double getAnnualIncome() {
		return annualIncome;
	}
	public void setAnnualIncome(double annualIncome) {
		this.annualIncome = annualIncome;
	}
	public int getNoOfEquipment() {
		return noOfEquipment;
	}
	public void setNoOfEquipment(int noOfEquipment) {
		this.noOfEquipment = noOfEquipment;
	}
//	void display()
//	{
//		System.out.println("Farmer id"+this.farmerId);
//		System.out.println("farmer name is"+this.farmerName);
//		System.out.println("land area is"+this.landArea);
//		System.out.println("city is "+this.city);
//		System.out.println("annual income is"+this.annualIncome);
//		System.out.println("no of equipment is"+this.noOfEquipment);
//	}
	
	public String toString()
	{
		return "\n Farmer id:"+this.farmerId+"\n Farmer name"+this.farmerName+"\n Land Area"+this.landArea+"\n city is"+this.city+"\n annual income:"+this.annualIncome+"\n noofequipment:"+this.noOfEquipment;
	}
	abstract void subsidy();
//	{
//		System.out.println("produce subsidy based on goods");
//	}
}
class DairyFarmer extends Farmer
{
	int noOfCattles;
	double milkproduceperday;
	DairyFarmer()
	{
		super();
		System.out.println("DairyFarmer default constructor called");
		this.noOfCattles=5;
		this.milkproduceperday=35.5;
	}
	DairyFarmer(int i,String str,double a,String c,double n,int e,int s,double p)
	{
		super(i,str,a,c,n,e);
		System.out.println("DairyFarmer parameterized constructor called");
		this.noOfCattles=s;
		this.milkproduceperday=p;
	}
	public int getNoOfCattles() {
		return noOfCattles;
	}
	public void setNoOfCattles(int noOfCattles) {
		this.noOfCattles = noOfCattles;
	}
	public double getMilkproduceperday() {
		return milkproduceperday;
	}
	public void setMilkproduceperday(double milkproduceperday) {
		this.milkproduceperday = milkproduceperday;
	}
//	void display()
//	{
//		super.display();
//		System.out.println("no of cattles is"+this.noOfCattles);
//		System.out.println("milk produce per day"+this.milkproduceperday);
//	}
	
public String toString()
{
	super.toString();
	return "\n no of cattles"+this.noOfCattles+"\n milk produce per day"+this.milkproduceperday;
	}
	void subsidy()
	{
		System.out.println("produce subsidy based on cattles");
	}
}
class PoultryFarmer extends Farmer
{
	int noofchiken;
	int noofshades;
	int eggsproducedperday;
	String poultryFarmname;
	PoultryFarmer()
	{
		super();
		System.out.println("poultry default constructor calllled");
		this.noofchiken=100;
		this.noofshades=5;
		this.eggsproducedperday=1000;
		this.poultryFarmname="xyz";
	}
	PoultryFarmer(int i,String str,double a,String c,double n,int e,int k,int d,int r,String n1)
	{
		super(i,str,a,c,n,e);
		System.out.println("poultry parameterized constructor calllled");
		this.noofchiken=k;
		this.noofshades=d;
		this.eggsproducedperday=r;
		this.poultryFarmname=n1;
	}
	public int getNoofchiken() {
		return noofchiken;
	}
	public void setNoofchiken(int noofchiken) {
		this.noofchiken = noofchiken;
	}
	public int getNoofshades() {
		return noofshades;
	}
	public void setNoofshades(int noofshades) {
		this.noofshades = noofshades;
	}
	public int getEggsproducedperday() {
		return eggsproducedperday;
	}
	public void setEggsproducedperday(int eggsproducedperday) {
		this.eggsproducedperday = eggsproducedperday;
	}
	public String getPoultryFarmname() {
		return poultryFarmname;
	}
	public void setPoultryFarmname(String poultryFarmname) {
		this.poultryFarmname = poultryFarmname;
	}
//	void display()
//	{
//		super.display();
//		System.out.println("no of chiken"+this.noofchiken);
//		System.out.println("no of shades"+this.noofshades);
//		System.out.println("no of egg produces per day"+this.eggsproducedperday);
//		System.out.println("Poultry farm name"+this.poultryFarmname);
//	}
	
public String toString()
{
	super.toString();
	return "\n no of chiken"+this.noofchiken+"\n no of shades"+this.noofshades+"\n no of egg produces per day "+this.eggsproducedperday+"\n Poultry farm name" +this.poultryFarmname;
}
	void subsidy()
	{
		System.out.println("produce subsidy based on eggs");
	}}
class OrganicFarmer extends Farmer
{
	int id;
	String cropType;
	String fertilizer;
	OrganicFarmer()
	{
		super();
		System.out.println("organic default constructor called");
		this.id=1;
		this.cropType="xyz";
		this.fertilizer="abc";
	}
	OrganicFarmer(int i,String str,double a,String c,double n,int e,int d,String t,String f)
	{
		super(i,str,a,c,n,e);
		System.out.println("organic parametrized constructor called");
		this.id=d;
		this.cropType=t;
		this.fertilizer=f;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCropType() {
		return cropType;
	}
	public void setCropType(String cropType) {
		this.cropType = cropType;
	}
	public String getFertilizer() {
		return fertilizer;
	}
	public void setFertilizer(String fertilizer) {
		this.fertilizer = fertilizer;
	}
//	void display()
//	{
//		super.display();
//		System.out.println("id is"+this.id);
//		System.out.println("crop type is"+this.cropType);
//		System.out.println("fertilizer used"+this.fertilizer);
//	}
	
	public String toString()
	{
		super.toString();
		return "\n Id is"+this.id+"\n crop type"+this.cropType+"\n fertilizer used"+this.fertilizer;
	}
	void subsidy()
	{
		System.out.println("produce subsidy based on crops");
	}
}
class Test1
{
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Farmer f1;
//		f1=new Farmer();
//		f1.subsidy();
       f1=new DairyFarmer();
       f1.toString();
       f1.subsidy();
       f1=new PoultryFarmer();
       f1.toString();
       f1.subsidy();
       f1=new OrganicFarmer();
       f1.toString();
       f1.subsidy();
       
	}

}
