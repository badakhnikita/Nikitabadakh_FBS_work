#include<stdio.h>
struct book
{
    char bname[20];
    int id;
    char author[20];
    double price;
};
void store(struct book* ,int );
void display(struct book* ,int );
void main()
{
    struct book b[5];
    store(b,5);
    display(b,5);
}

void store(struct book* b,int size)
{
   
    for(int i=0;i<size;i++)
    {
         printf("\n enter the details  of book");
        scanf("%s",&b[i].bname);
        scanf("%d",&b[i].id);
        scanf("%s",&b[i].author);
        scanf("%lf",&b[i].price);
    }
}

void display(struct book* b,int size)
{
    
    for(int i=0;i<size;i++)
    {
         printf("\n enter the details  of book");
        printf("\nbookname:%s",b[i].bname);
        printf("\nid:%d",b[i].id);
        printf("\nauthor:%s",b[i].author);
        printf("\nprice:%lf",b[i].price);
    }
}