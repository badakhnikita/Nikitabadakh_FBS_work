#include<stdio.h>
int mystrncmp(char*,char*,int);
void main()
{
    char str[20];
    printf("Enter the string1:");
    scanf("%s",str);
    char str1[20];
    printf("Enter the string2:");
    scanf("%s",str1);
   int res=mystrncmp(str,str1,3);
   printf("%d",res);
}

int mystrncmp(char* ptr,char* ptr1,int n)
{
    int i=0;
    while(i<n)
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