#include<stdio.h>
int evenodd(int);
void main()
{
  int num;
    printf("enter the number");
    scanf("%d",&num);
  if(evenodd(num))
   {
    printf("even number");
   }
   else
   {
    printf("odd number");
   }
}
int evenodd(int num)
{
    
    return num%2==0;

    // if(num%2==0)
    // {
    //     return 1;
    // }
    //  else
    //  {
    //      return 0;
    //  }
}