class Time
{
 int hr,min,sec;
 Time(int h,int m,int s)
{
 this.hr=h;
this.min=m;
this.sec=s;
}
Time add(Time t)
{
 int totalsec=this.sec+t.sec;
int totalmin=this.min+t.min+totalsec/60;
int totalhr=this.hr+t.hr+totalmin/60;
totalsec%=60;
totalmin%=60;
totalhr%=24;
return new Time(totalhr,totalmin,totalsec);

}
Time add(int h,int m,int s)
{
 int totalsec=this.sec+s;
int totalmin=this.min+m+totalsec/60;
int totalhr=this.hr+h+totalmin/60;
totalsec%=60;
totalmin%=60;
totalhr%=24;
return new Time(totalhr,totalmin,totalsec);

}
void display()
{
System.out.println("Time is"+hr+":"+min+":"+sec);
}
}
class Test
{
 public static void main(String args[])
{
 Time t1=new Time(2,40,40);
Time t2=new Time(3,50,50);
Time t3=t1.add(t2);
t3.display();
Time t4=t1.add(3,40,80);
t4.display();
}//main end here;
}//Test class end here