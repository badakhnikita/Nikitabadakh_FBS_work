#include<stdio.h>
void convert();
void main()
{
    convert();
}
void convert()
{
    char ch='z';
    if(ch>=65 && ch<=91)
    {
        printf("letter is uppercase");

    }
    else
    {
     printf("letter is lowercase");
    }
}