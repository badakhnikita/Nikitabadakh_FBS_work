#include<stdio.h>
void main()
{
    char ch;
    printf("Enter the chracter:");
    scanf("%c",&ch);
    if(ch=='a'||ch=='e'||ch=='i'||ch=='o'||ch=='u'||ch=='A'||ch=='E'||ch=='I'||ch=='O'||ch=='U')
    {
        printf("\n Character is vowel");
    }
    else if((ch>='a'&& ch<='z')||  (ch>='A'&&ch<='z'))
    {
        printf("\n character is consonant");
    }
    else if(ch=='0'|| ch=='9')
    {
        printf("\n charcter is digit");
    }
    else
    {
        printf("\n charcter is special symbol");
    }
}