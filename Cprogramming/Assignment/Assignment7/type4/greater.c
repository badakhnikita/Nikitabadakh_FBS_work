#include<stdio.h>
    int check(int,int,int);
    void main()
    {
       int a,b,c;
    printf("enter the numbers");
    scanf("%d %d %d",&a,&b,&c);
      int r=check(a,b,c);
      if(r==1)
      {
        printf("a is greater");
      }
      else if(r==2)
      {
        printf("b is greater");
      }
      else
      {
        printf("c is greater");
      }
    }
  int check(int a,int b,int c)
  {
   
    if(a>b && a>c)
    {
        return 1;
    }
    else if(b>a && b>c)
    {
        return 2;
    }
    else
    {
        return 0;
    }
  }