#include<stdio.h>
int countword(char*);
void main()
{
    char str[20];
    printf("Enter the string:");
    // scanf("%[^\n]",str);
    fgets(str,sizeof(str),stdin);
   int ch= countword(str);
   printf("%d",ch);
}

int countword(char* ptr)
{
    int i=0,count=0;
    int flag=0;
    while(ptr[i]!='\0')
    {
        if(ptr[i]!=' ' && ptr[i]!='\n' && ptr[i]!='\t')
        {
            if(flag==0)
            {
            count++;
            flag=1;
            }
        }
            else{
                flag=0;
            }
        
        i++;
    }
    return count;
}