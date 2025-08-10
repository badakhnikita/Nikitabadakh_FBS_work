#include<stdio.h>
void even1();
void odd1();
void main()
{
  
    even1();
    odd1();  
}
void even1()
{
    int start,end;
    printf("\n enter start value");
    scanf("%d",&start);
    printf("\n enter end value");
    scanf("%d",&end);
    for(int i=start;i<=end;i++)
    {
        if(i%2==0)
        {
            printf("\n even number is %d",i);
        }
       
    }
}
void odd1()
{
    int start,end;
    printf("\nenter start value");
    scanf("%d",&start);
    printf("\nenter end value");
    scanf("%d",&end);
    for(int i=start;i<=end;i++)
    {
        if(i%2!=0)
        {
            printf("\nodd number is %d",i);
        }
       
    }
}