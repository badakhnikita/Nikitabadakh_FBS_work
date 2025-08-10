 #include<stdio.h>
int evenodd();
void main()
{
  if(evenodd())
   {
    printf("even number");
   }
   else
   {
    printf("odd number");
   }
}
int evenodd()
{
    int num;
    printf("enter the number");
    scanf("%d",&num);
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
// void main()
// {
//     int num;
//     printf("enter the number");
//     scanf("%d",&num);
//     num%2==0?printf("even number"):printf("odd number");

// }