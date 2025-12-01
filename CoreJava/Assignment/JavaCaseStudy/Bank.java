import java.util.Scanner;
import java.time.LocalDate;
import java.time.Period;

class Transaction {
    String type;
    double amount;
    LocalDate date;

    Transaction() {
        this.type = "credit";
        this.amount = 45000;
        this.date = LocalDate.now();
    }

    Transaction(String type, double amount, LocalDate date) {
        this.type = type;
        this.amount = amount;
        this.date = date;
    }

    public String toString() {
        return "\n Type: " + this.type +
               "\n Amount: " + this.amount +
               "\n TransactionDate: " + this.date;
    }
}

abstract class Account {
    String accountNo;
    String accountHolderName;
    double balance;
    LocalDate lastTransactionDate;
    Transaction[] t1 = new Transaction[100];
    int trancount = 0;

    Account() {
        this.accountNo = "00023456788";
        this.accountHolderName = "ABC";
        this.balance = 23467;
        this.lastTransactionDate = LocalDate.now();
    }

    Account(String no, String name, double bal, LocalDate date) {
        this.accountNo = no;
        this.accountHolderName = name;
        this.balance = bal;
        this.lastTransactionDate = date;
    }

    final void deposit(double amount) {
        if (amount <= 0) {
            System.out.println("Amount must be positive");
            return;
        }
        balance += amount;
        addTransaction("credit", amount);
        lastTransactionDate = LocalDate.now();
        System.out.println("Amount deposited successfully: " + amount);
    }

    void addTransaction(String type, double amount) {
        if (trancount < t1.length) {
            t1[trancount++] = new Transaction(type, amount, LocalDate.now());
        }
        lastTransactionDate = LocalDate.now();
    }

    Transaction[] getTransaction() {
        return t1;
    }

    abstract void withdraw(double amount);
    abstract double calculateInterestRate();

    double totalcredit() {
        double sum = 0;
        for (int i = 0; i < trancount; i++) {
            if (t1[i].type.equals("credit") ||
                t1[i].type.equals("EMI") ||
                t1[i].type.equals("Interest-credit")) {
                sum += t1[i].amount;
            }
        }
        return sum;
    }

    double totaldebit() {
        double sum = 0;
        for (int i = 0; i < trancount; i++) {
            if (t1[i].type.equals("debit") ||
                t1[i].type.equals("Interest-debit")) {
                sum += t1[i].amount;
            }
        }
        return sum;
    }
}

class SavingAccount extends Account {
    static int interestRate = 3;
    double minbalance = 10000;

    SavingAccount(String no, String name, double bal, LocalDate date) {
        super(no, name, bal, date);
    }

    void withdraw(double amount) {
        if (amount <= 0) {
            System.out.println("Withdraw amount must be positive");
            return;
        }
        if ((balance - amount) >= minbalance) {
            balance -= amount;
            addTransaction("debit", amount);
            System.out.println("Withdraw successful: " + amount);
        } else {
            System.out.println("Minimum balance required: " + minbalance);
        }
    }

    double calculateInterestRate() {
        double interest = balance * interestRate / 100;
        balance += interest;
        addTransaction("Interest-credit", interest);
        return interest;
    }
}


class SalaryAccount extends Account {
    boolean isfreeze = false;

    SalaryAccount(String no, String name, double bal, LocalDate date) {
        super(no, name, bal, date);
    }

    void withdraw(double amount) {
        Period p = Period.between(lastTransactionDate, LocalDate.now());
        int months = p.getYears() * 12 + p.getMonths();

        if (months >= 2) {
            isfreeze = true;
            System.out.println("Salary Account is frozen due to inactivity for 2 months.");
            return;
        }

        if (amount <= 0) {
            System.out.println("Withdraw amount must be positive");
            return;
        }

        if (balance >= amount) {
            balance -= amount;
            addTransaction("debit", amount);
            System.out.println("Withdraw successful: " + amount);
        } else {
            System.out.println("Insufficient balance");
        }
    }

    double calculateInterestRate() {
        System.out.println("No interest for Salary Account");
        return 0;
    }
}
class CurrentAccount extends Account {
    double overDraftLimit;

    CurrentAccount(String no, String name, double bal, LocalDate date, double o) {
        super(no, name, bal, date);
        this.overDraftLimit = o;
    }

    void withdraw(double amount) {
        if (amount <= 0) {
            System.out.println("Withdraw amount must be positive");
            return;
        }
        if ((balance + overDraftLimit) >= amount) {
            balance -= amount;
            addTransaction("debit", amount);
            System.out.println("Withdraw successful: " + amount);
        } else {
            System.out.println("Overdraft limit exceeded");
        }
    }

    double calculateInterestRate() {
        System.out.println("No interest for Current Account");
        return 0;
    }
}

class LoanAccount extends Account {
    double emi;
    double loanamt;
    int interestrate;

    LoanAccount(String no, String name, double loanAmount, LocalDate date, double e, int rate) {
        super(no, name, -Math.abs(loanAmount), date);
        this.emi = e;
        this.loanamt = loanAmount;
        this.interestrate = rate;
    }

    void withdraw(double amount) {
        System.out.println("Withdraw not allowed in Loan Account");
    }

    double calculateInterestRate() {
        double interest = Math.abs(balance) * interestrate / 100;
        balance -= interest;
        addTransaction("Interest-debit", interest);
        return interest;
    }

    void payEmi() {
        balance += emi;
        addTransaction("EMI", emi);
        System.out.println("EMI Paid: " + emi);
    }
}

class BankModel {
    Account[] ac = new Account[100];
    int account = 0;

    void addAccount(Account a) {
        if (account < ac.length) {
            ac[account++] = a;
            System.out.println("Account Added: " + a.accountNo);
        } else {
            System.out.println("Storage full");
        }
    }

    Account getAccount(String no) {
        for (int i = 0; i < account; i++) {
            if (ac[i].accountNo.equals(no))
                return ac[i];
        }
        return null;
    }

    Account[] getallAccount() {
        return ac;
    }
}

class BankController {
    BankModel model;

    BankController(BankModel m) {
        this.model = m;
    }

    void createSavingAcc(String no, String name, double bal, LocalDate date) {
        model.addAccount(new SavingAccount(no, name, bal, date));
    }

    void createSalaryAcc(String no, String name, double bal, LocalDate date) {
        model.addAccount(new SalaryAccount(no, name, bal, date));
    }

    void createCurrentAcc(String no, String name, double bal, LocalDate date, double limit) {
        model.addAccount(new CurrentAccount(no, name, bal, date, limit));
    }

    void createLoanAcc(String no, String name, double loanamt, LocalDate date, double emi, int intRate) {
        model.addAccount(new LoanAccount(no, name, loanamt, date, emi, intRate));
    }

    void deposit(String no, double amount) {
        Account a = model.getAccount(no);
        if (a == null) {
            System.out.println("Account not found");
            return;
        }
        a.deposit(amount);
    }

    void withdraw(String no, double amount) {
        Account a = model.getAccount(no);
        if (a == null) {
            System.out.println("Account not found");
            return;
        }
        a.withdraw(amount);
    }

    void payEmi(String no) {
        Account a = model.getAccount(no);
        if (a instanceof LoanAccount) {
            ((LoanAccount) a).payEmi();
        } else {
            System.out.println("Not a loan account");
        }
    }

    void calInterest(String no) {
        Account a = model.getAccount(no);
        if (a == null) {
            System.out.println("Account not found");
            return;
        }
        double interest = a.calculateInterestRate();
        System.out.println("Interest: " + interest);
    }

    void generateEODReport() {
        Account[] arr = model.getallAccount();
        for (Account a : arr) {
            if (a == null) continue;

            System.out.println("\n---- Account Report ----");
            System.out.println("Account No: " + a.accountNo);
            System.out.println("Holder: " + a.accountHolderName);

            if (a instanceof SavingAccount)
                System.out.println("Type: Saving");
            else if (a instanceof SalaryAccount)
                System.out.println("Type: Salary");
            else if (a instanceof CurrentAccount)
                System.out.println("Type: Current");
            else if (a instanceof LoanAccount)
                System.out.println("Type: Loan");

            System.out.println("Balance: " + a.balance);

            System.out.println("Transactions:");
            for (int j = 0; j < a.trancount; j++) {
                System.out.println(a.t1[j]);
            }
        }
    }

    void showStatement(String no) {
        Account a = model.getAccount(no);
        if (a == null) {
            System.out.println("Account not found");
            return;
        }

        System.out.println("\nAccount Statement for " + a.accountHolderName);
        for (int j = 0; j < a.trancount; j++) {
            System.out.println(a.t1[j]);
        }
    }
}

class BankView {
    BankController con;

    BankView(BankController con) {
        this.con = con;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        BankModel model = new BankModel();
        BankController con = new BankController(model);
        BankView view = new BankView(con);

        while (true) {
            view.showMenu();
            System.out.print("Enter choice: ");
            int ch = sc.nextInt();
            sc.nextLine();

            switch (ch) {
                case 1:
                    System.out.print("Account No: ");
                    String ac1 = sc.nextLine();
                    System.out.print("Holder Name: ");
                    String name1 = sc.nextLine();
                    System.out.print("Balance: ");
                    double b1 = sc.nextDouble();
                    con.createSavingAcc(ac1, name1, b1, LocalDate.now());
                    break;

                case 2:
                    System.out.print("Account No: ");
                    String ac2 = sc.nextLine();
                    System.out.print("Holder Name: ");
                    String name2 = sc.nextLine();
                    System.out.print("Balance: ");
                    double b2 = sc.nextDouble();
                    sc.nextLine();
                    System.out.print("Last Transaction Date (YYYY-MM-DD) or blank: ");
                    String d = sc.nextLine();
                    LocalDate dt = d.isEmpty() ? LocalDate.now() : LocalDate.parse(d);
                    con.createSalaryAcc(ac2, name2, b2, dt);
                    break;

                case 3:
                    System.out.print("Account No: ");
                    String ac3 = sc.nextLine();
                    System.out.print("Holder Name: ");
                    String name3 = sc.nextLine();
                    System.out.print("Balance: ");
                    double b3 = sc.nextDouble();
                    System.out.print("Overdraft Limit: ");
                    double o = sc.nextDouble();
                    con.createCurrentAcc(ac3, name3, b3, LocalDate.now(), o);
                    break;

                case 4:
                    System.out.print("Account No: ");
                    String ac4 = sc.nextLine();
                    System.out.print("Holder Name: ");
                    String name4 = sc.nextLine();
                    System.out.print("Loan Amount: ");
                    double l = sc.nextDouble();
                    System.out.print("EMI Amount: ");
                    double e = sc.nextDouble();
                    System.out.print("Interest Rate: ");
                    int rate = sc.nextInt();
                    con.createLoanAcc(ac4, name4, l, LocalDate.now(), e, rate);
                    break;

                case 5:
                    System.out.print("Account No: ");
                    String ac5 = sc.nextLine();
                    System.out.print("Amount: ");
                    double amt1 = sc.nextDouble();
                    con.deposit(ac5, amt1);
                    break;

                case 6:
                    System.out.print("Account No: ");
                    String ac6 = sc.nextLine();
                    System.out.print("Amount: ");
                    double amt2 = sc.nextDouble();
                    con.withdraw(ac6, amt2);
                    break;

                case 7:
                    System.out.print("Account No: ");
                    String ac7 = sc.nextLine();
                    con.calInterest(ac7);
                    break;

                case 8:
                    System.out.print("Account No: ");
                    String ac8 = sc.nextLine();
                    con.payEmi(ac8);
                    break;

                case 9:
                    con.generateEODReport();
                    break;

                case 10:
                    System.out.print("Account No: ");
                    String ac10 = sc.nextLine();
                    con.showStatement(ac10);
                    break;

                case 11:
                    System.out.println("Exiting...");
                    return;

                default:
                    System.out.println("Invalid choice");
            }
        }
    }

    void showMenu() {
        System.out.println("\n----- BANK MENU -----");
        System.out.println("1. Create Saving Account");
        System.out.println("2. Create Salary Account");
        System.out.println("3. Create Current Account");
        System.out.println("4. Create Loan Account");
        System.out.println("5. Deposit Money");
        System.out.println("6. Withdraw Money");
        System.out.println("7. Calculate Interest");
        System.out.println("8. Pay EMI");
        System.out.println("9. Generate EOD Report");
        System.out.println("10. Show Statement");
        System.out.println("11. Exit");
    }
}
