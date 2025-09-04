#include<stdio.h>
#include<stdlib.h>
struct player
{
    char name[20];
    int match;
    int runs;
    int wickets;
    int jerseynumber;
};
void showmenu();
void store(struct player* ,int* );
void display(struct player* ,int* );
void displayplayer(struct player);
void addplayer(struct player**,int*);
void removeplayer(struct player* ,int* );
void updateplayerinformation(struct player*,int*);
void updatestore(struct player* );
int searchplayer(struct player*,int*);
void sortplayer(struct player* ,int*);
void sortplayerwicket(struct player* ,int*);
void topplayer(struct player* ,int* );

void main()
{   
    int size;
    printf("Enter the size of array");
    scanf("%d",&size);
    struct player* p=(struct player*)malloc(sizeof(struct player)*size);
    while(1)
    {
        showmenu();
        int choice;
        printf("\n enter the choice");
        scanf("\n %d",&choice);
        if(choice==1)
        {
         store(p,&size);
        }
        else if(choice==2)
        {
         display(p,&size);
        }
        else if(choice==3)
        {
        addplayer(&p,&size);
        }
         else if(choice==4)
        {
        removeplayer(p,&size);
        }
        else if(choice==5)
        {
        int index1=searchplayer(p,&size);
        if(index1==-1)
        {
           printf("\n Player not found"); 
        }
        else{
            printf("Details of found cricket player");
            displayplayer(p[index1]);
        }
        }
        else if(choice==6)
       {
        updateplayerinformation(p,&size);
       }
       else if(choice==7)
       {
        sortplayer(p,&size);
       }
        else if(choice==8)
       {
        sortplayerwicket(p,&size);
       }
       else if(choice==9)
       {
        topplayer(p,&size);
       }
       else if(choice==10)
       {
        printf("\n exit");
        break;
       }
       else{
        printf("\n Invalid choice");
       }
    } 
}
void showmenu()
{
    printf("\n1.store player information:");
    printf("\n2.display player information:");
    printf("\n3.Add the player:");
    printf("\n4.remove the player from list");
    printf("\n5.Search the player:");
    printf("\n6.Update the player information:");
    printf("\n7.sort the player based on their performance:");
    printf("\n8.sort the player based on their performance(wicket):");
    printf("\n9.Dispaly top 3 player information:");
    printf("\n10. exit");
}
void store(struct player* b,int* size)
{
   
    for(int i=0;i<*size;i++)
    {
        printf("\n enter the details  of cricket player");
        scanf("Player:%s",&b[i].name);
        scanf("No of match:%d",&b[i].match);
        scanf("Runs:%d",&b[i].runs);
        scanf("Wickets:%d",&b[i].wickets);
        scanf("Jerseynumber:%d",&b[i].jerseynumber);
    }
}
void updatestore(struct player* b)
{

        printf("\n enter the details  of cricket player");
        scanf("Player:%s",&b->name);
        scanf("No of match:%d",&b->match);
        scanf("Runs:%d",&b->runs);
        scanf("Wickets:%d",&b->wickets);
        scanf("Jerseynumber:%d",&b->jerseynumber);

}

void display(struct player* b,int* size)
{
    
    for(int i=0;i<*size;i++)
    {
         printf("\n enter the details  of cricket player");
         printf("\n %d",i);
        printf("\nplayername:%s",b[i].name);
        printf("\nno of match:%d",b[i].match);
        printf("\nruns:%d",b[i].runs);
        printf("\nwickets:%d",b[i].wickets);
        printf("\njerseynumber:%d",b[i].jerseynumber);
    }
}

void displayplayer(struct player b)
        {
        printf("\n enter the details  of cricket player");
        printf("\nplayername:%s",b.name);
        printf("\nno of match:%d",b.match);
        printf("\nruns:%d",b.runs);
        printf("\nwickets:%d",b.wickets);
        printf("\njerseynumber:%d",b.jerseynumber);   
        }
void addplayer(struct player** b,int* size)
{   int n;
    printf("\n how many player do you want add:");
    scanf("%d",&n);
*b=(struct player*)realloc(*b,(*size+n)*(sizeof(struct player)));
for(int i=*size;i<*size+n;i++)
    {
        printf("\n enter the details  of cricket player");
        scanf("playername:%s",&(*b)[i].name);
        scanf("no of match:%d",&(*b)[i].match);
        scanf("runs:%d",&(*b)[i].runs);
        scanf("wickets:%d",&(*b)[i].wickets);
        scanf("Jerseynumber:%d",&(*b)[i].jerseynumber);
    }
    
   *size+=n;
}
void removeplayer(struct player* b,int* size)
{
    int n;
    printf("\n Enter  the jerseynumber of player:");
    scanf("\n %d",&n);
   int flag=0;
    for(int i=0;i<*size;i++)
    {
        if(b[i].jerseynumber==n)
        {
            flag=1;
            for(int j=i;j<*size-1;j++)
            {
                b[j]=b[j+1];
            }
            (*size)--;
        }
    }
    if(flag!=1)
    {
        printf("\n Player not found");
    }
    
}

int searchplayer(struct player* b,int* size)
{
    int n;
    printf("\n Enter  the jerseynumber of player which you want to find");
    scanf("%d",&n);
    int flag=0;
    int index=0;
    for(int i=0;i<*size;i++)
    {
        if(b[i].jerseynumber==n)
        {
          flag=1;
          index=i;
          break;
        }
    }
    if(flag==1)
    {
      return index;
    }
    else{
        return -1;
    }
}
void updateplayerinformation(struct player* b,int* size)
{
    display(b,size);
    int i;
    printf("\n update the player information");
    scanf("%d",&i);
    updatestore(&b[i]);
}

void sortplayer(struct player* b,int* size)
{
    struct player temp;
    for(int i=0;i<*size-1;i++)
    {
        for(int j=0;j<*size-1-i;j++)
        {
            if(b[j].runs<b[j+1].runs)
            {
                temp=b[j];
                b[j]=b[j+1];
                b[j+1]=temp;
            }
        }
    }
    display(b,size);
}
void sortplayerwicket(struct player* b,int* size)
{
    struct player  temp;
    for(int i=0;i<*size-1;i++)
    {
        for(int j=0;j<*size-1-i;j++)
        {
            if(b[j].wickets<b[j+1].wickets)
            {
                temp=b[j];
                b[j]=b[j+1];
                b[j+1]=temp;
            }
        }
    }
    display(b,size);
}

void topplayer(struct player* b,int* size)
{
    int size1=*size<3?*size:3;

struct player  temp;
    for(int i=0;i<size1-1;i++)
    {
        for(int j=0;j<size1-1-i;j++)
        {
            if(b[j].runs<b[j+1].runs)
            {
                temp=b[j];
                b[j]=b[j+1];
                b[j+1]=temp;
            }
        }
    }
    display(b,&size1);
    
}