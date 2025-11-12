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
}//BankAccouunt class end here;

class SavingAccount extends BankAccount
{
double interestRate;

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
}//class currentAccount ends here;

class Test
{
public static void main(String args[])
{
 SavingAccount s1=new SavingAccount();
 s1.display();
 SavingAccount s2=new SavingAccount(215456,"nikita",327887,"pune",5.3);
 s2.display();
 CurrentAccount c1=new CurrentAccount();
c1.display();
CurrentAccount c2=new CurrentAccount(215456,"nikita",327887,"pune",5000);
c2.display();
}//main end here;
}//Test class end here;





