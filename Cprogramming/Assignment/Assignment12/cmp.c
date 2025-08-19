#include<stdio.h>
int mystrcmp(char*,char*);
void main()
{
    char str[20];
    printf("Enter the string1:");
    scanf("%s",str);
    char str1[20];
    printf("Enter the string2:");
    scanf("%s",str1);
   int res=mystrcmp(str,str1);
   printf("%d",res);
}

int mystrcmp(char* ptr,char* ptr1)
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