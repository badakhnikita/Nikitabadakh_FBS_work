#include<stdio.h>
#include<string.h>
int mystrnstr(char* ,char*,int );
void main()
{
    char str[20];
    printf("Enter the string:");
    scanf("%s",str);
     char str1[20];
    printf("Enter the substring:");
    scanf("%s",str1);
   int x=mystrnstr(str,str1,3);
   if(x==-1)
   {
    printf("Substring is not found");
   }
   else{
    printf("\n Substring is found at %d",x);
   }
}

int mystrnstr(char* ptr,char* ptr1,int n)
{
    int len=strlen(ptr);
    int len1=strlen(ptr1);
    int i=0,j;
    while(i<=(n-len1))
    {
        j=0;
        while(j<len1 && ptr[i+j]==ptr1[j])
        {
            
            j++;
        }
       
        
        if(j==len1)
        {
            return i;
        }
        i++;
    }
    return -1;
}