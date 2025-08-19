#include<stdio.h>
int mystrcasecmp(char*,char*);
char* mystrlower(char*);
void main()
{
    char str[20];
    printf("Enter the string1:");
    scanf("%s",str);
    char str1[20];
    printf("Enter the string2:");
    scanf("%s",str1);
   mystrlower(str);
   mystrlower(str1);

   int res=mystrcasecmp(str,str1);
   printf("%d",res);
}

char* mystrlower(char* ptr)
{
    int i=0;
    while(ptr[i]!='\0')
    { 
        if(ptr[i]>='A' && ptr[i]<='Z')
        {
            ptr[i]=ptr[i]+32;
        }
        i++;
    }
    return ptr;
}
int mystrcasecmp(char* ptr,char* ptr1)
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