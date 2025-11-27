import java.util.Scanner;
import java.time.LocalDate;
import java.time.Period;
class Transaction
{
	String type;
	double amount;
	LocalDate date;
	Transaction()
	{
	 this.type="credit";
	 this.amount=45000;
	 this.date=LocalDate.now();
	}
	Transaction(String str,double a,LocalDate d)
	{
	 this.type=str;
	 this.amount=a;
	 this.date=d;
	}
	public String toString()
	{
		return "\n Type:"+this.type+"\n Amount"+this.amount+"\n TransactionDate:"+this.date;
	}
}//Class Transaction ends here;

abstract class Account
{
	String accountNo;
	String accountHolderName;
	double balance;
	LocalDate lastTransactionDate;
	Transaction[]t1=new Transaction[100];
	int trancount=0;
	
	Account()
	{
	 this.accountNo="00023456788";
	 this.accountHolderName="ABC";
	 this.balance=23467;
	 this.lastTransactionDate=LocalDate.now();
	}
	Account(String no,String str,double b,LocalDate d)
	{
	 this.accountNo=no;
	 this.accountHolderName=str;
	 this.balance=b;
	 this.lastTransactionDate=d;
	}
	final void deposit(double amount)
	{
		if(amount<=0)
		{
			System.out.println("amount must be positive");
			return;
		}
		balance+=amount;
		addTransaction("credit",amount);
		lastTransactionDate=LocalDate.now();
		System.out.println("Amount deposit succesfully"+amount);
	}
	void addTransaction(String type,double amount)
	{
		if(trancount<t1.length)
		{
		 t1[trancount++]=new Transaction(type,amount,LocalDate.now());	
		}
		lastTransactionDate=LocalDate.now();
	}
	Transaction[] getTransaction()
	{
		return t1;
	}
	abstract void withdraw(double amount);
	abstract double calculateInterestRate();
	
	double totalcredit()
	{
		double sum=0;
		for(int i=0;i<trancount;i++)
		{
		if(t1[i].type.equals("credit")|| t1[i].type.equals("EMI")|| t1[i].type.equals("Interest-credit"))
		{
			sum+=t1[i].amount;
		}
		}
		return sum;	
	}
	double totaldebit()
	{
		double sum=0;
		for(int i=0;i<trancount;i++)
		{
		if(t1[i].type.equals("debit")||t1[i].type.equals("Interest-debit"))
		{
			sum+=t1[i].amount;
		}
		}
		return sum;	
	}
}//Class Account end here;

class SavingAccount extends Account
{
	static int interestRate=3;
	double minbalance=10000;
	SavingAccount(String no,String str,double b,LocalDate d)
	{
		super(no,str,b,d);
	}
	void withdraw(double amount)
	{
		if(amount<=0)
		{
			System.out.println("withdraw amount must be positive");
			return;
		}
		if((balance-amount)>=minbalance)
		{
			balance-=amount;
			addTransaction("debit", amount);
			System.out.println("withdraw the amount successfully"+amount);
		}
		else
		{
			System.out.println("saving account Withdraw failed "+minbalance+"required");
		}
	}
	
	double calculateInterestRate()
	{
		double interestamt=balance*interestRate/100;
		balance+=interestamt;
		addTransaction("Interest-credit", interestamt);
		return interestamt;
		
	}	
}//SavingAccount class end here;

class SalaryAccount extends Account
{
	boolean isfreeze=false;
	SalaryAccount(String no,String str,double b,LocalDate d)
	{
		super(no,str,b,d);
	}
	void withdraw(double amount)
	{
		Period p=Period.between(lastTransactionDate,LocalDate.now());
		int months=p.getYears()*12+p.getMonths();
		if(months>=2)
		{
			isfreeze=true;
			System.out.println("Salary Accouunt is freezed because of no activity for 2 months and withdraw is failed");
		}
		else
		{
			isfreeze=false;
		}
		if(amount<=0)
		{
			System.out.println("withdraw amount must be positive");
			return;
		}
		if(balance>=amount)
		{
			balance-=amount;
			addTransaction("debit", amount);
			System.out.println("withdraw the amount successfully"+amount);
		}
		else
		{
			System.out.println("Insufficient balance");
		}
	}
	double calculateInterestRate()
	{
		System.out.println("For salary Account no interest rate");
		return 0.0;	
	}	
}//SalaryAccount ends here;

class CurrentAccount extends Account
{
	double overDraftLimit;
	 CurrentAccount(String no,String str,double b,LocalDate d,double o)
	 {
		 super(no,str,b,d);
		 this.overDraftLimit=o; 
	 }
	 void withdraw(double amount)
	 {
		 if(amount<=0)
			{
				System.out.println("withdraw amount must be positive");
				return;
			}
			if((balance+overDraftLimit)>=amount)
			{
				balance-=amount;
				addTransaction("debit", amount);
				System.out.println("withdraw the amount successfully"+amount);
			}
			else
			{
				System.out.println("withdraw failed due to overdraftlimit exceeds");
			}
	 }
	 double calculateInterestRate()
		{
			System.out.println("For current Account no interest rate");
			return 0.0;	
		}
}//CurrentAccount class end here;

class LoanAccount extends Account
{
	double emi;
	double loanamt;
	int interestrate;
	LoanAccount(String no,String str,double loanAmount,LocalDate d,double e,int i)
	{
		super(no,str,-Math.abs(loanAmount),d);
		this.emi=e;
		this.loanamt=loanAmount;
		this.interestrate=i;	
	}
	void withdraw(double amount)
	{
		System.out.println("For Loan account withdraw not allowed");
	}
	double calculateInterestRate()
	{
			double interest=Math.abs(balance)*interestrate/100;
			balance-=interest;
			addTransaction("Interest-debit", interest);
			return interest;
	}
	void payEmi()
	{
		balance+=emi;
		addTransaction("EMI", emi);
		System.out.println("LoanAccount EMI paid:"+emi);
	}	
}//LoanAccount class end here;

class BankModel
{
	Account ac[]=new Account[100];
	int account=0;
	void addAccount(Account a)
	{
		if(account<ac.length)
		{
			ac[account++]=a;
			System.out.println("Account added"+a.accountNo);
		}
		else
		{
			System.out.println("Storage full");
		}
	}
	Account getAccount(String acaccountNo)
	{
		for(int i=0;i<account;i++)
		{
			if(ac[i].accountNo.equals(acaccountNo))
			{
				return ac[i];
			}
		}
		return null;
	}
	Account[] getallAccount()
	{
		return ac;
	}
}//BankModel class end here;

class BankController
{
	BankModel model;
	BankController(BankModel m)
	{
		this.model=m;
	}
	void createSavingAcc(String accountNo,String accountHolderName,double balance,LocalDate d)
	{
		model.addAccount(new SavingAccount(accountNo, accountHolderName, balance,d));
	}
	void createSalaryAcc(String accountNo,String accountHolderName,double balance,LocalDate d)
	{
		model.addAccount(new SalaryAccount(accountNo, accountHolderName, balance,d));
	}
	void createCurrentAcc(String accountNo,String accountHolderName,double balance,LocalDate d,double o)
	{
		model.addAccount(new CurrentAccount1(accountNo, accountHolderName, balance,d,o));
	}
	void createLoanAcc(String accountNo,String accountHolderName,double loanamt,LocalDate d,double emi,int interest)
	{
		model.addAccount(new LoanAccount(accountNo, accountHolderName,loanamt,d,emi,interest));
	}

	void deposit(String accountNo,double amount)
	{
		Account a=model.getAccount(accountNo);
		if(a==null)
		{
			System.out.println("Account no found");
			return;
		}
		a.deposit(amount);
	}
	void withdraw(String accountNo,double amount)
	{
		Account a=model.getAccount(accountNo);
		if(a==null)
		{
			System.out.println("Account no found");
			return;
		}
		a.withdraw(amount);
	}
	void payEmi(String accountNo)
	{
		Account a=model.getAccount(accountNo);
		if(a==null)
		{
			System.out.println("Account no found");
		     return;
		}
		if(a instanceof LoanAccount)
		{
			LoanAccount l1=(LoanAccount)a;
			l1.payEmi();
		}
		else
		{
			System.out.println("Not loan account");
		}
	}
	void calInterest(String accountNo)
	{
		Account a=model.getAccount(accountNo);
		if(a==null)
		{
			System.out.println("Account no found");
			return;
		}
		double interest=a.calculateInterestRate();
		System.out.println("Interest:"+interest);
	}
	void generateEODReport()
	{
		Account[] a1=model.getallAccount();
		for (int i = 0; i < a1.length; i++) {
		    Account a = a1[i];
		    if (a == null) continue;
		    System.out.println("\nAccount No : " + a.accountNo);
		    System.out.println("Holder : " + a.accountHolderName);
		 System.out.println("Number of Transactions: " + a.trancount);
    if (a instanceof SavingAccount)
            System.out.println("Account Type : Saving Account");
        else if (a instanceof SalaryAccount)
            System.out.println("Account Type : Salary Account");
        else if (a instanceof CurrentAccount1)
            System.out.println("Account Type : Current Account");
        else if (a instanceof LoanAccount)
            System.out.println("Account Type : Loan Account");

        System.out.println("Balance    : " + a.balance);

        System.out.println("Number of Transactions: " + a.trancount);

        double totalCredit = a.totalcredit();
        double totalDebit = a.totaldebit();
       double interest = 0;
        for (int j = 0; j < a.trancount; j++) {
            if (a.t1[j] != null) {
                if (a.t1[j].type.equals("Interest-credit") ||
                    a.t1[j].type.equals("Interest-debit")) 
                {
                    interest += a.t1[j].amount;
                }
            }
        }
		System.out.println("Total Credits: " +totalCredit);
	        System.out.println("Total Debits : " + totalDebit);
	        System.out.println("Interest     : " + interest);
	        
	        System.out.println("Transactions:");
	        Transaction[] t1 = a.getTransaction();
	        boolean any = false;
	        for (int j = 0; j < t1.length; j++) {
	            if (t1[j] != null) {
	                System.out.println("  " + t1[j]);
	                any = true;
	            }
	        }
	        if (!any) System.out.println("  (no transactions)");
	    
		}
	}
	void showStatement(String accNo) 
	{ Account a = model.getAccount(accNo); 
	 if (a == null) 
		 
	{ 
		 System.out.println("Controller: Account not found."); 
	return; 
	} 
	 System.out.println("\nStatement for: " + a.accountNo+ " | " + a.accountHolderName);
	 System.out.println("Transactions:");
     Transaction[] t1 = a.getTransaction();
     boolean any = false;
     for (int j = 0; j < t1.length; j++) {
         if (t1[j] != null) {
             System.out.println("  " + t1[j]);
             any = true;
         }
     }
     if (!any) System.out.println("  (no transactions)");
	}
}//BankController class end here;

class BankView
{
	public static void main(String args[])
	{
		Scanner sc=new Scanner(System.in);
		BankModel model=new BankModel();
		BankController con=new BankController(model);
		BankView view =new BankView();
		while(true)
		{
			view.showMenu();
			System.out.println("Enter the choice");
			int ch=sc.nextInt();
			sc.nextLine();
			switch(ch)
			{
			case 1:
			{
				System.out.println("Enter the Account Number");
				String ac=sc.nextLine();
				System.out.println("Enter the Account Holder name");
				String name=sc.nextLine();
				System.out.println("Enter the Balance");
				double b=sc.nextDouble();
				con.createSavingAcc(ac, name, b, LocalDate.now());
				break;
			}
			case 2:
			{
				System.out.println("Enter the Account Number");
				String ac=sc.nextLine();
				System.out.println("Enter the Account Holder name");
				String name=sc.nextLine();
				System.out.println("Enter the Balance");
				double b=sc.nextDouble();
                                sc.nextLine();
                                System.out.println("Enter last transaction date:");
                                String d = sc.nextLine();
                                LocalDate lastDate;
                                if (d.isEmpty())
                                lastDate = LocalDate.now();
                                else
                                lastDate = LocalDate.parse(d);
                                con.createSalaryAcc(ac, name, b, lastDate);
				break;
			}
			case 3:
			{
				System.out.println("Enter the Account Number");
				String ac=sc.nextLine();
				System.out.println("Enter the Account Holder name");
				String name=sc.nextLine();
				System.out.println("Enter the Balance");
				double b=sc.nextDouble();
				System.out.println("Enter the overdraftLimit");
				double o=sc.nextDouble();
				con.createCurrentAcc(ac, name, b, LocalDate.now(),o);
				break;	
			}
			case 4:
			{
				System.out.println("Enter the Account Number");
				String ac=sc.nextLine();
				System.out.println("Enter the Account Holder name");
				String name=sc.nextLine();
				System.out.println("Enter the Loan Amount");
				double l=sc.nextDouble();
				System.out.println("Enter the EMI Amount");
				double e=sc.nextDouble();
				System.out.println("Enter the Interest");
				int i=sc.nextInt();
				con.createLoanAcc(ac, name, l, LocalDate.now(),e,i);
				break;	
			}
			case 5:
			{
				System.out.println("Enter the account number");
				String ac=sc.nextLine();
				System.out.println("Enter the amount");
				double amt=sc.nextDouble();
				con.deposit(ac, amt);
				break;
			}
			case 6:
			{
				System.out.println("Enter the account number");
				String ac=sc.nextLine();
				System.out.println("Enter the amount");
				double amt=sc.nextDouble();
				con.withdraw(ac, amt);
				break;
			}
			case 7:
			{
				System.out.println("Enter the account number");
				String ac=sc.nextLine();
				con.calInterest(ac);
				break;
			}
			case 8:
			{
				System.out.println("Enter the account number");
				String ac=sc.nextLine();
				con.payEmi(ac);
				break;	
			}
			case 9:
			{
				System.out.println("Generate EOD report");
				con.generateEODReport();
				break;
			}
			case 10:
			{
				System.out.println("Show Account Statement");
				System.out.println("Enter the account number");
				String ac=sc.nextLine();
				con.showStatement(ac);
				break;
			}
			case 11:
			{
				System.out.println("Exit");
				return;
			}
			default:
			{
				System.out.println("Invalid choice");
				break;
			}
			}
		}
}
	void showMenu()
	{
		System.out.println("Bank Menu");
		System.out.println("1.Create saving Account");
		System.out.println("2.Create Salary Account");
		System.out.println("3.Create Current Account");
		System.out.println("4.Create Loan Account");
		System.out.println("5.Deposite Money");
		System.out.println("6.Withdraw Money");
		System.out.println("7.Calculate Interest");
		System.out.println("8.PayEMI");
		System.out.println("9.Generate EOD Report");
		System.out.println("10.Show Account Statement");
		System.out.println("11.Exit");
	}
}//BankView class End here;