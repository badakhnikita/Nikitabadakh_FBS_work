#include<stdio.h>
struct time
{
    int hrs,min,sec;
};
void store(struct time* );
void display(struct time  );
struct time calculatetime(struct time );
struct time addtime(struct time ,struct time );
void convertsec(struct time );
void main()
{
    struct time t1,t2,res,res1,res3;
    store(&t1);
    display(t1);
    store(&t2);
    display(t2);
   res=calculatetime(t1);
   display(res);
   res1=calculatetime(t2);
   display(res1);
   res3=addtime(res,res1);
    display(res3);
    convertsec(res3);
    
}
void store(struct time* b)
{
   
         printf("\n enter the details  of time");
        scanf("%d",&b->hrs);
        scanf("%d",&b->min);
          scanf("%d",&b->sec);

}

void display(struct time b)
{
        printf("\n enter the details  of time");
        printf("\nhrs:%d",b.hrs);
        printf("\nmin:%d",b.min);
        printf("\nsec:%d",b.sec);
       
}
 struct time calculatetime(struct time b1)
{
    int tsec=b1.hrs*3600+b1.min*60+b1.sec;
    b1.hrs=tsec/3600;
    tsec=tsec%3600;
    b1.min=tsec/60;
    b1.sec=tsec%60;
   return b1;
}

struct time addtime(struct time res,struct time res1)
    {
    struct time result;
    result.sec=res.sec+res1.sec;
    result.min=res.min+res1.min;
    result.hrs=res.hrs+res1.hrs;
    if(result.sec>=60)
    {
        result.min+=result.sec/60;
        result.sec=result.sec%60;
        
    }
    
    if(result.min>=60)
    {
        result.hrs+=result.min/60;
        result.min=result.hrs%60;
        
    }
    
    return result;
    }
    void convertsec(struct time res3)
    {
        int tsec1=res3.hrs*3600+res3.min*60+res3.sec;
        printf("\n sec:%d",tsec1);
    }