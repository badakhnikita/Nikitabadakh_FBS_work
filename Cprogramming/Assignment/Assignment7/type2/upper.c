#include<stdio.h>
int convert();
int main()
{
   if(convert())
   {
    printf("letter is uppercase");
   }
   else
   {
    printf("letter is lowercase");
   }
}
int convert()
{
    char ch='z';
    if(ch>=65 && ch<=91)
    {
        return 1;

    }
    else
    {
     return 0;
    }
}
