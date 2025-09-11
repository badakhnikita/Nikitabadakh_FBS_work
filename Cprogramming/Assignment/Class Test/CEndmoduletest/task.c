#include<stdio.h>
struct task
{
    int taskID;
    char description[50];
    char status[20];
};
void showmenu();
void Addtaskdetails(struct task* ,int);
void Updatetaskdetails(struct task* ,int );
void Displaytaskdetails(struct task*,int );
void main()
{
    struct task t[5];
    while(1)
    {
        showmenu();
        int choice;
        printf("\n Enter the choice:");
        scanf("%d",&choice);
        if(choice==1)
        {
         Addtaskdetails(t,5);

        }
        else if(choice==2)
        {
          Updatetaskdetails(t,5);
        }
        else if(choice==3)
        {
        Displaytaskdetails(t,5) ;
        }
        else if(choice==4)
        {
         printf("\n Exit");
         break;
        }
        else
        {
            printf("\n Invalid choice:");
        }
    }
}

void showmenu()
{
    printf("\n Start");
    printf("\n1.Add the task details:");
    printf("\n2.Update the task details:");
    printf("\n3.Display the task details:");
    printf("\n4.Exit");
}
void Addtaskdetails(struct task* ptr,int n)
{
for(int i=0;i<n;i++)
{
printf("\n Enter the task details:");
scanf("%d",&ptr[i].taskID);
scanf("%s",ptr[i].description);
scanf("%s",ptr[i].status);
}
}
void Updatetaskdetails(struct task* ptr,int n)
{
    int i;
    printf("\n Enter the taskid which you want to upadte:");
    scanf("%d",&i);
    for(int j=0;j<n;j++)
    {
    if(ptr[j].taskID==i)
    {
       printf("\n Enter the updated task deatils:");
       scanf("%d",&ptr[j].taskID);
       scanf("%s",ptr[j].description);
       scanf("%s",ptr[j].status);
    }
}
}
void Displaytaskdetails(struct task* ptr,int n)
{
    for(int i=0;i<n;i++)
{
printf("\n Enter the task details:");
printf("%d",ptr[i].taskID);
printf("%s",ptr[i].description);
printf("%s",ptr[i].status);
}

}