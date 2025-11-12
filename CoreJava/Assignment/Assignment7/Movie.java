package Assignment0;

public class Movie {
	String title;
	int duration;
	int realeaseYear;
	String directorName;
	String language;
	double rating;
  Movie()
  {
	  System.out.println("Movie default constructor called");
	  this.title="xyz";
	  this.duration=3;
	  this.realeaseYear=2025;
	  this.directorName="abc";
	  this.language="marathi";
	  this.rating=5;
}
  Movie(String t,int d,int r,String n,String l,double g)
  {
	  System.out.println("Movie parameterized constructor called");
	  this.title=t;
	  this.duration=d;
	  this.realeaseYear=r;
	  this.directorName=n;
	  this.language=l;
	  this.rating=g;
}
  
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public int getDuration() {
	return duration;
}
public void setDuration(int duration) {
	this.duration = duration;
}
public int getRealeaseYear() {
	return realeaseYear;
}
public void setRealeaseYear(int realeaseYear) {
	this.realeaseYear = realeaseYear;
}
public String getDirectorName() {
	return directorName;
}
public void setDirectorName(String directorName) {
	this.directorName = directorName;
}
public String getLanguage() {
	return language;
}
public void setLanguage(String language) {
	this.language = language;
}
public double getRating() {
	return rating;
}
public void setRating(double rating) {
	this.rating = rating;
}
void display()
{
System.out.println("Movie name is"+this.title);
System.out.println("movie duration is"+this.duration);
System.out.println("realease year"+this.realeaseYear);
System.out.println("director name is"+this.directorName);
System.out.println("language is"+this.language);
System.out.println("rating:"+this.rating);
}
}
class TheaterMovie extends Movie
{
	double ticketprice;
	int screenCount;
	double boxofficeCollection;
	TheaterMovie()
	{
		super();
		System.out.println("Theater default constructor called");
		this.ticketprice=200;
		this.screenCount=4;
		this.boxofficeCollection=5000000;
	}
	TheaterMovie(String t,int d,int r,String n,String l,double g,double p,int s,double b)
	{
		super(t,d,r,n,l,g);
		System.out.println("Theater default constructor called");
		this.ticketprice=p;
		this.screenCount=s;
		this.boxofficeCollection=b;
	}
	public double getTicketprice() {
		return ticketprice;
	}
	public void setTicketprice(double ticketprice) {
		this.ticketprice = ticketprice;
	}
	public int getScreenCount() {
		return screenCount;
	}
	public void setScreenCount(int screenCount) {
		this.screenCount = screenCount;
	}
	public double getBoxofficeCollection() {
		return boxofficeCollection;
	}
	public void setBoxofficeCollection(double boxofficeCollection) {
		this.boxofficeCollection = boxofficeCollection;
	}
	void display()
	{
		super.display();
		System.out.println("ticketprice is "+this.ticketprice);
		System.out.println("scrrencount is"+this.screenCount);
		System.out.println("boxofficecollection is"+this.boxofficeCollection);
	
}
}
class OttMovie extends Movie
{
	String platformName;
	boolean subscriptionrequired;
	int viewCount;
	OttMovie()
	{
		super();
		System.out.println("ottmovie default constructor called");
		this.platformName="abc";
		this.subscriptionrequired=true;
		this.viewCount=100;
		
	}
	OttMovie(String t,int d,int r,String n,String l,double g,String p,boolean s,int v)
	{
		super(t,d,r,n,l,g);
		System.out.println("ottmovie parameterized constructor called");
		this.platformName=p;
		this.subscriptionrequired=s;
		this.viewCount=v;
		
	}
	public String getPlatformName() {
		return platformName;
	}
	public void setPlatformName(String platformName) {
		this.platformName = platformName;
	}
	public boolean isSubscriptionrequired() {
		return subscriptionrequired;
	}
	public void setSubscriptionrequired(boolean subscriptionrequired) {
		this.subscriptionrequired = subscriptionrequired;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	void display()
	{
		super.display();
		System.out.println("platform name is "+this.platformName);
		System.out.println("subscription required"+this.subscriptionrequired);
		System.out.println("view count"+this.viewCount);
}
}
class Test2
{
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	TheaterMovie t1=new TheaterMovie();
	t1.display();
	OttMovie o1=new OttMovie();
	o1.display();

	}

}
