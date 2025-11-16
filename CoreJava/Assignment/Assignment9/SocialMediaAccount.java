package Assignment0;

abstract class SocialMediaAccount {
	String userName;
	boolean isPublic;
	boolean isVerified;
	int noOfPosts;
	int noOfLikes;
	int noOfComment;
	int noOfImpression;

	SocialMediaAccount()
	{
		System.out.println("SocialMediaAccount default constructor called");
		this.userName="anc";
		this.isPublic=false;
		this.isVerified=true;
		this.noOfPosts=5;
		this.noOfLikes=5;
		this.noOfComment=6;
		this.noOfImpression=5;
	}
	SocialMediaAccount(String u,boolean p,boolean v,int s,int l,int c,int i)
	{
		System.out.println("SocialMediaAccount parameterized constructor called");
		this.userName=u;
		this.isPublic=p;
		this.isVerified=v;
		this.noOfPosts=s;
		this.noOfLikes=l;
		this.noOfComment=c;
		this.noOfImpression=i;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public boolean isPublic() {
		return isPublic;
	}
	public void setPublic(boolean isPublic) {
		this.isPublic = isPublic;
	}
	public boolean isVerified() {
		return isVerified;
	}
	public void setVerified(boolean isVerified) {
		this.isVerified = isVerified;
	}
	public int getNoOfPosts() {
		return noOfPosts;
	}
	public void setNoOfPosts(int noOfPosts) {
		this.noOfPosts = noOfPosts;
	}
	public int getNoOfLikes() {
		return noOfLikes;
	}
	public void setNoOfLikes(int noOfLikes) {
		this.noOfLikes = noOfLikes;
	}
	public int getNoOfComment() {
		return noOfComment;
	}
	public void setNoOfComment(int noOfComment) {
		this.noOfComment = noOfComment;
	}
	public int getNoOfImpression() {
		return noOfImpression;
	}
	public void setNoOfImpression(int noOfImpression) {
		this.noOfImpression = noOfImpression;
	}
//	void display()
//	{
//		System.out.println("username is"+this.userName);
//		System.out.println("is public or not "+this.isPublic);
//		System.out.println("is verified or not"+this.isVerified);
//		System.out.println("no of posts"+this.noOfPosts);
//		System.out.println("no of likes"+this.noOfLikes);
//		System.out.println("no of comments"+this.noOfComment);
//		System.out.println("no of impression"+this.noOfImpression);
//	}
	
	public String toString()
	{
		return "\n Username is"+this.userName+"\n is public or not"+this.isPublic+"\n is verified or not"+this.isVerified+"\n no of posts"+this.noOfPosts+"\n no of likes"+this.noOfLikes+"\n no of comment"+this.noOfComment+"\n no of impression"+this.noOfImpression;
	}
	abstract int calculateEngagementRate();
//	{
//	  
//	    return (noOfLikes + noOfComment) / noOfPosts;
//	}

}
class InstagramAccount extends SocialMediaAccount
{
	int noOfFollowers;
	int noOfFollowing;
	int noOfHighlights;
	int noOfPostArchieved;
	int noOfStoriesArchieved;
	InstagramAccount()
	{
		super();
		System.out.println("Instagram accunt default constructor called");
		this.noOfFollowers=6;
		this.noOfFollowing=7;
		this.noOfHighlights=6;
		this.noOfPostArchieved=5;
		this.noOfStoriesArchieved=7;
	}
	InstagramAccount(String u,boolean p,boolean v,int s,int l,int c,int i,int f,int w,int h,int a,int e)
	{
		super(u,p,v,s,l,c,i);
		System.out.println("Instagram accunt parameterized constructor called");
		this.noOfFollowers=f;
		this.noOfFollowing=w;
		this.noOfHighlights=h;
		this.noOfPostArchieved=a;
		this.noOfStoriesArchieved=e;
	}
	public int getNoOfFollowers() {
		return noOfFollowers;
	}
	public void setNoOfFollowers(int noOfFollowers) {
		this.noOfFollowers = noOfFollowers;
	}
	public int getNoOfFollowing() {
		return noOfFollowing;
	}
	public void setNoOfFollowing(int noOfFollowing) {
		this.noOfFollowing = noOfFollowing;
	}
	public int getNoOfHighlights() {
		return noOfHighlights;
	}
	public void setNoOfHighlights(int noOfHighlights) {
		this.noOfHighlights = noOfHighlights;
	}
	public int getNoOfPostArchieved() {
		return noOfPostArchieved;
	}
	public void setNoOfPostArchieved(int noOfPostArchieved) {
		this.noOfPostArchieved = noOfPostArchieved;
	}
	public int getNoOfStoriesArchieved() {
		return noOfStoriesArchieved;
	}
	public void setNoOfStoriesArchieved(int noOfStoriesArchieved) {
		this.noOfStoriesArchieved = noOfStoriesArchieved;
	}
//	void display()
//	{
//		super.display();
//		System.out.println("no of follower"+this.noOfFollowers);
//		System.out.println("no of following"+this.noOfFollowing);
//		System.out.println("no of highlights"+this.noOfHighlights);
//		System.out.println("no of post Archieved"+this.noOfPostArchieved);
//		System.out.println("no of stories Archieved"+this.noOfStoriesArchieved);
//		
//	}
	public String toString()
	{
		super.toString();
		return "\n no of follower"+this.noOfFollowers+"\n no of following"+this.noOfFollowing+"\n no of highights"+this.noOfHighlights+"\n no of archieved"+this.noOfPostArchieved+"\n no of stories archieved"+this.noOfStoriesArchieved;
	}
	int calculateEngagementRate()
	{
	    return (noOfLikes + noOfComment + noOfStoriesArchieved) / noOfFollowers;
	}

}
class LinkedInAccount extends SocialMediaAccount
{
	int noofconnection;
	int noofprofileview;
	int noofjobapplied;
	LinkedInAccount()
	{
		super();
		System.out.println("Linkedin default constructor called");
		this.noofconnection=6;
		this.noofprofileview=7;
		this.noofjobapplied=7;
	}
	LinkedInAccount(String u,boolean p,boolean v,int s,int l,int c,int i,int f,int v1,int j)
	{
		super(u,p,v,s,l,c,i);
		System.out.println("Linkedin default constructor called");
		this.noofconnection=f;
		this.noofprofileview=v1;
		this.noofjobapplied=j;
	}
	public int getNoofconnection() {
		return noofconnection;
	}
	public void setNoofconnection(int noofconnection) {
		this.noofconnection = noofconnection;
	}
	public int getNoofprofileview() {
		return noofprofileview;
	}
	public void setNoofprofileview(int noofprofileview) {
		this.noofprofileview = noofprofileview;
	}
	public int getNoofjobapplied() {
		return noofjobapplied;
	}
	public void setNoofjobapplied(int noofjobapplied) {
		this.noofjobapplied = noofjobapplied;
	}
//	void display()
//	{
//		 super.display();
//		System.out.println("no of connection"+this.noofconnection);
//		System.out.println("no of profile view"+this.noofprofileview);
//		System.out.println("no of job applied"+this.noofjobapplied);
//	}
	public String toString()
	{
		return "\n no of connection"+this.noofconnection+"\n no of profile view"+this.noofprofileview+"\n no of job applied"+this.noofjobapplied;
	}
	int calculateEngagementRate()
	{
	    return (noOfLikes + noOfComment + noofprofileview) / noOfPosts;
	}

}
class Test3
{
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SocialMediaAccount s1;
		
//s1.display();
//		System.out.println(s1.calculateEngagementRate());
		s1=new InstagramAccount();
		s1.toString();
		System.out.println(s1.calculateEngagementRate());
		s1=new LinkedInAccount();
		s1.toString();
		System.out.println(s1.calculateEngagementRate());
		}

}
