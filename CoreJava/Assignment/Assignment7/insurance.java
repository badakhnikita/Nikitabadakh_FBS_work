package Assignment0;

public class Insurance {
	int policyNumber;
	String policyHolderName;
	double premiumAmount;
	double coverageAmount;
	int durationInYear;
	
	Insurance()
	{
		System.out.println("Insurance default constructor called");
		this.policyNumber=5632;
		this.policyHolderName="abc";
		this.premiumAmount=36569;
		this.coverageAmount=561676;
		this.durationInYear=4;
	}
	Insurance(int p,String h,double a,double c,int d)
	{
		System.out.println("Insurance parameterized constructor called");
		this.policyNumber=p;
		this.policyHolderName=h;
		this.premiumAmount=a;
		this.coverageAmount=c;
		this.durationInYear=d;
	}
	public int getPolicyNumber() {
		return policyNumber;
	}
	public void setPolicyNumber(int policyNumber) {
		this.policyNumber = policyNumber;
	}
	public String getPolicyHolderName() {
		return policyHolderName;
	}
	public void setPolicyHolderName(String policyHolderName) {
		this.policyHolderName = policyHolderName;
	}
	public double getPremiumAmount() {
		return premiumAmount;
	}
	public void setPremiumAmount(double premiumAmount) {
		this.premiumAmount = premiumAmount;
	}
	public double getCoverageAmount() {
		return coverageAmount;
	}
	public void setCoverageAmount(double coverageAmount) {
		this.coverageAmount = coverageAmount;
	}
	public int getDurationInYear() {
		return durationInYear;
	}
	public void setDurationInYear(int durationInYear) {
		this.durationInYear = durationInYear;
	}
     void display() {
    	 System.out.println("policy number"+this.policyNumber);
    	 System.out.println("policy holder name"+this.policyHolderName);
    	 System.out.println("premium amount"+this.policyNumber);
    	 System.out.println("coverage Amount"+this.coverageAmount);
    	 System.out.println("duration of policy"+this.durationInYear);
     }
}

class HealthInsurance extends Insurance
{
	String hospitalName;
	double medicalCoverage;
	boolean cashlessFacility;
	HealthInsurance()
	{
		super();
		System.out.println("Health default constructor called");
		this.hospitalName="abc";
		this.medicalCoverage=6746;
		this.cashlessFacility=true;
	}
	HealthInsurance(int p,String h,double a,double c,int d,String n,double m,boolean f)
	{
		super(p,h,a,c,d);
		System.out.println("Health parameterized constructor called");
		this.hospitalName=n;
		this.medicalCoverage=m;
		this.cashlessFacility=f;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	public double getMedicalCoverage() {
		return medicalCoverage;
	}
	public void setMedicalCoverage(double medicalCoverage) {
		this.medicalCoverage = medicalCoverage;
	}
	public boolean isCashlessFacility() {
		return cashlessFacility;
	}
	public void setCashlessFacility(boolean cashlessFacility) {
		this.cashlessFacility = cashlessFacility;
	}
	void display()
	{
		super.display();
		System.out.println("hospital name is"+this.hospitalName);
		System.out.println("medical coverage "+this.medicalCoverage);
		System.out.println("cashless Facility"+this.cashlessFacility);
	}
}
class LifeInsurance extends Insurance
{
	String nomineeName;
	double maturityAmount;
	boolean accidentalCover;
	LifeInsurance()
	{
		super();
		System.out.println("Life default constructor called");
		this.nomineeName="abc";
		this.maturityAmount=2635;
		this.accidentalCover=true;
	}
	LifeInsurance(int p,String h,double a,double c,int d,String n,double u,boolean t)
	{
		super(p,h,a,c,d);
		System.out.println("Life default constructor called");
		this.nomineeName=n;
		this.maturityAmount=u;
		this.accidentalCover=t;
	}
	public String getNomineeName() {
		return nomineeName;
	}
	public void setNomineeName(String nomineeName) {
		this.nomineeName = nomineeName;
	}
	public double getMaturityAmount() {
		return maturityAmount;
	}
	public void setMaturityAmount(double maturityAmount) {
		this.maturityAmount = maturityAmount;
	}
	public boolean isAccidentalCover() {
		return accidentalCover;
	}
	public void setAccidentalCover(boolean accidentalCover) {
		this.accidentalCover = accidentalCover;
	}
	void display()
	{
		super.display();
		System.out.println("nominee name "+this.nomineeName);
		System.out.println("maturity  amount"+this.maturityAmount);
		System.out.println("accidental cover"+this.accidentalCover);
	}
}
class Test4
{
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HealthInsurance h1=new HealthInsurance ();
		h1.display();
		LifeInsurance l1=new LifeInsurance();
		l1.display();
		
	}

}
