package Assignment0;
import java.time.LocalDate;
import java.time.Period;
class BankAccount
{
 int accountNumber;
 String accountholder;
 double balance;
 String branch;
 BankAccount()
{
System.out.println("BankAccount default constructor called");
 this.accountNumber=12323424;
 this.accountholder="Nikita"; 
 this.balance=40000.56;
this.branch="pune";
}
BankAccount(int a,String str,double c,String b)
{
System.out.println("BankAccount parameterized constructor called");
 this.accountNumber=a;
 this.accountholder=str; 
 this.balance=c;
 this.branch=b;
}

void setAccountNumber(int n)
{
 this.accountNumber=n;
}

void setAccountHolder(String a)
{
 this.accountholder=a;
}
void setBalance(double c)
{
 this.balance=c;
}
 void setBranch(String b1)
{
 this.branch=b1;
}
int getAccountNumber()
{
 return this.accountNumber;
}

String getAccountHolder()
{
 return this.accountholder;
}
double getBalance()
{
 return this.balance;
}

String getBranch()
{
 return this.branch;
}

void display()
{
System.out.println("Account no:"+this.accountNumber);
System.out.println("Accountholder name:"+this.accountholder);
System.out.println("current balance:"+this.balance);
System.out.println("Branch name:"+this.branch);
}

void withdraw(double amount)
{
	if(amount<=balance)
	{
	System.out.println("withdraw amount");
	}
	else
	{
		System.out.println("amount cant withdraw ");	
	}
}
}//BankAccouunt class end here;

class SavingAccount extends BankAccount
{
double interestRate;
double minbalance=2000;
SavingAccount()
{
super();
System.out.println("Saving account default class constructor called");
this.interestRate=5;
}
SavingAccount(int a,String str,double c,String b,double i)
{
super(a,str,c,b);
System.out.println("Saving account parameterized class constructor called");
this.interestRate=i;
}

void setInterestRate(double i1)
{
 this.interestRate=i1;
}

double getInterestRate()
{
 return this.interestRate;
}

void display()
{
super.display();
System.out.println("Interest rate is"+this.interestRate);
}
void withdraw(double amount)
{
	if(amount<=minbalance)
	{
		System.out.println("withdraw money");
	}
	else
	{
		System.out.println("money cant withdraw");
	}
}
}//class Saving ends here;

class CurrentAccount extends BankAccount
{
double overDraftLimit;

CurrentAccount()
{
super();
System.out.println("current account default class constructor called");
this.overDraftLimit=5;
}
CurrentAccount(int a,String str,double c,String b,double o)
{
super(a,str,c,b);
System.out.println("current  account parameterized class constructor called");
this.overDraftLimit=o;
}

void setOverDraftLimit(double o1)
{
 this.overDraftLimit=o1;
}

double getOverDraftLimit()
{
 return this.overDraftLimit;
}

void display()
{
super.display();
System.out.println("overDraftLimit is"+this.overDraftLimit);
}
void withdraw(double amount)
{
	if(amount<=(overDraftLimit+balance))
	{
		System.out.println("Withdraw money");
	}
	else
	{
		System.out.println("money cant withdraw");
	}
}
}//class currentAccount ends here;

class SalaryAccount extends BankAccount
{
LocalDate lasttranscationdate;
 SalaryAccount()
 {
	 super();
	 System.out.println("Salary default constructor called");
	 this.lasttranscationdate=LocalDate.now();
 }
 SalaryAccount(int a,String str,double c,String b,LocalDate l)
 {
	 super(a,str,c,b);
	 System.out.println("Salary parameterized constructor called");
	 this.lasttranscationdate=l;
 }
public LocalDate getLasttranscationdate() {
	return lasttranscationdate;
}
public void setLasttranscationdate(LocalDate lasttranscationdate) {
	this.lasttranscationdate = lasttranscationdate;
}
 void display()
 {
	 super.display();
	 System.out.println("last trancation date"+this.lasttranscationdate);
 }
 void withdraw(double amount)
 {
	Period diff=Period.between(lasttranscationdate, LocalDate.now()) ;
	int m1 = diff.getYears() * 12 + diff.getMonths();
	if(m1<2)
	{
		lasttranscationdate=LocalDate.now();
		System.out.println("Withdraw money");
	}
	else
	{
		System.out.println("Money cant withdraw");
	}
 }
}//salary Account end here
class Test9
{
public static void main(String args[])
{
	
	BankAccount b1;
	b1=new BankAccount();
	b1.display();
	b1.withdraw(3000);
 b1=new SavingAccount();
 b1.display();
 b1=new SavingAccount(215456,"nikita",327887,"pune",5.3);
 b1.display();
 b1.withdraw(3000);
 b1=new CurrentAccount();
b1.display();
b1=new CurrentAccount(215456,"nikita",327887,"pune",5000);
b1.display();
b1.withdraw(5000);
b1=new SalaryAccount(1245125,"nikita",2666,"pune",LocalDate.of(2024, 10,27 ));
b1.display();
b1.withdraw(4000);
}//main end here;
}//Test class end here;





