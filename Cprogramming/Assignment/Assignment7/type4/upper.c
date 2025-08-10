#include<stdio.h>
int convert(char);
int main()
{
     char ch='z';
   if(convert(ch))
   {
    printf("letter is uppercase");
   }
   else
   {
    printf("letter is lowercase");
   }
}
int convert(char ch)
{
    if(ch>=65 && ch<=91)
    {
        return 1;

    }
    else
    {
     return 0;
    }
}
