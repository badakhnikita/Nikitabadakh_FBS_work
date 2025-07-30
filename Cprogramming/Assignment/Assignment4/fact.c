#include<stdio.h>
void main()
{
   int n,num=1,i=1;
   printf("Enter the number");
   scanf("%d",&n);
   while(i<n)
   {
     num=num*(n-i);
    i++; 
   } 
   num=num*n;
   printf("%d",num);
}
