#include<stdio.h>
int checklarger(char*,char*);
void main()
{
    char  str[10];
    printf("Enter the string:");
    scanf("%s",str);
    char  str1[10];
    printf("Enter the string:");
    scanf("%s",str1);
    int x=checklarger(str,str1);
    if(x==1)
    {
     printf("\n string 1 is greater");
    }
    else if(x==-1)
    {
        printf("\n string2 is greater");
    }
    else
    {
        printf("\n Both string are equal");
    }

}

int checklarger(char* ptr,char* ptr1)
{
    int i=0;
    while(ptr[i]!='\0' || ptr1[i]!='\0')
    {
        if(ptr[i]!=ptr1[i])
        {
            if(ptr[i]>ptr1[i])
            return 1;
            else
            return -1;
        }
        i++;
    }
    return 0;
}