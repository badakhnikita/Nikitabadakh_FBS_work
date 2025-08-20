#include<stdio.h>
char* replacespace(char*);
void main()
{
    char str[20];
    printf("Enter the string:");
    // scanf("%[^\n]",str);
    fgets(str,sizeof(str),stdin);
   char* ch= replacespace(str);
   printf("%s",ch);
}

char* replacespace(char* ptr)
{
    int i=0;
    while(ptr[i]!='\0')
    {
        if(ptr[i]==' ')
        {
            ptr[i]='$';
        }
        i++;
    }
    return ptr;
}