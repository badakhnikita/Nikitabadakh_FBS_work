#include<stdio.h>
#include<stdlib.h>
struct movie
{
    char movietitle[20];
    char directorname[20];
    int year;
    char genre[20];
    float rating;
};
void showmenu();
void store(struct movie* ,int );
void display(struct movie* ,int );
void displaymovie(struct movie);
void updatemovieinformation(struct movie*,int);
int searchmovie(struct movie*,int);
void updatestore(struct movie*);

void main()
{   
    int size;
    printf("Enter the size of array");
    scanf("%d",&size);
    struct movie* m=(struct movie*)malloc(sizeof(struct movie)*size);
    while(1)
    {
        showmenu();
        int choice;
        printf("\n enter the choice");
        scanf("\n %d",&choice);
        if(choice==1)
        {
         store(m,size);
        }
        else if(choice==2)
        {
         display(m,size);
        }
        else if(choice==3)
        {
        int index1=searchmovie(m,size);
        if(index1==-1)
        {
           printf("\n movie not found"); 
        }
        else{
            printf("Details of found movie");
            displaymovie(m[index1]);
        }
        }
        else if(choice==4)
       {
        updatemovieinformation(m,size);
       }
       else if(choice==5)
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
    printf("\n1.store movie information");
    printf("\n2.display movie information");
    printf("\n3.Search the movie");
    printf("\n4.Update the movie information");
    printf("\n5. exit");
}
void store(struct movie* b,int size)
{
   
    for(int i=0;i<size;i++)
    {
        printf("\n enter the details  of movie");
        scanf("%s",&b[i].movietitle);
        scanf("%s",&b[i].directorname);
        scanf("%d",&b[i].year);
        scanf("%s",&b[i].genre);
        scanf("%f",&b[i].rating);
    }
}
void updatestore(struct movie* b)
{
   
    
        printf("\n enter the details  of movie");
        scanf("%s",&b->movietitle);
        scanf("%s",&b->directorname);
        scanf("%d",&b->year);
        scanf("%s",&b->genre);
        scanf("%f",&b->rating);

}

void display(struct movie* b,int size)
{
    
    for(int i=0;i<size;i++)
    {
        printf("\n enter the details  of movie");
        printf("\n %d",i);
        printf("\nmoviename:%s",b[i].movietitle);
        printf("\ndirectorname:%s",b[i].directorname);
        printf("\nyear:%d",b[i].year);
        printf("\ntypeofmovie:%s",b[i].genre);
        printf("\nratings:%f",b[i].rating);
    }
}

void displaymovie(struct movie b)
        {
        printf("\n enter the details  of movie");
        printf("\nmoviename:%s",b.movietitle);
        printf("\ndirectorname:%s",b.directorname);
        printf("\nyear:%d",b.year);
        printf("\ntypeofmovie:%s",b.genre);
        printf("\nratings:%f",b.rating); 
        }
int searchmovie(struct movie* b,int size)
{
    int n;
    printf("\n Enter  the year of player which you want to find");
    scanf("\n %d",&n);
    int flag=0;
    int index=0;
    for(int i=0;i<size;i++)
    {
        if(b[i].year==n)
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
void updatemovieinformation(struct movie* b,int size)
{
    display(b,size);
    int n;
    printf("\n update the movie information");
    scanf("\n %d",&n);
    updatestore(&b[n]);

}