#include<stdio.h>
#include<string.h>
void main()
{
    char userid[20];
    char password[20];
    char vid[20];
    char vpassword[20];
    int number,renter;
    printf("\n set the userid and password");
    scanf("\n%s %s",userid,password);
    printf("\n Enter the userid and password");
    scanf("\n %s %s",vid,vpassword);
    if(strcmp(userid,vid)==0 && strcmp(password,vpassword)==0)
    {
      printf("\n Enter the four digit number");
      scanf("\n %d",&number);
      printf("\n %d",number);
      printf("\n renter the same number");
      scanf("\n %d",&renter);
      printf("\n %d",renter);
      if(renter==number)
      {
        printf("\n login sucessful");
      }
      else{
        printf("\n login unsucessful");
      }
    }
    else{
      printf("\n invalid user id");
    }
}