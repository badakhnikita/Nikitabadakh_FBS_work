#include<stdio.h>
struct player
{
    char name[20];
    int match;
    int runs;
    int wickets;
};
void store(struct player* ,int );
void display(struct player* ,int );
int maximum(struct player* ,int );
int maximumw(struct player* ,int );
void displayp(struct player);
void main()
{
    struct player p[10];
    store(p,10);
    display(p,10);
  int index= maximum(p,10);
  displayp(p[index]);
   int index1= maximumw(p,10);
     displayp(p[index1]);
}

void store(struct player* b,int size)
{
   
    for(int i=0;i<size;i++)
    {
         printf("\n enter the details  of cricket match");
        scanf("%s",&b[i].name);
        scanf("%d",&b[i].match);
        scanf("%d",&b[i].runs);
        scanf("%d",&b[i].wickets);
    }
}

void display(struct player* b,int size)
{
    
    for(int i=0;i<size;i++)
    {
         printf("\n enter the details  of cricket match");
        printf("\nplayername:%s",b[i].name);
        printf("\nno of match:%d",b[i].match);
        printf("\nruns:%d",b[i].runs);
        printf("\nwickets:%d",b[i].wickets);
    }
}
int maximum(struct player* b,int size)
{
    int max=b[0].runs;
    int indexrun=0;
    for(int i=0;i<size;i++)
    {
        if(b[i].runs>max)
        {
        max=b[i].runs;
        indexrun=i;
        }
    }
    return indexrun;
}
int maximumw(struct player* b,int size)
{
    int max=b[0].wickets;
    int indexwicket=0;
    for(int i=0;i<size;i++)
    {
        if(b[i].wickets>max)
        {
        max=b[i].wickets;
        indexwicket=i;
        }
    }
  return indexwicket;
}
void displayp(struct player b)
{
    
         printf("\n enter the details  of cricket match");
        printf("\nplayername:%s",b.name);
        printf("\nno of match:%d",b.match);
        printf("\nruns:%d",b.runs);
        printf("\nwickets:%d",b.wickets);

}