#include<stdio.h>
void main()
{
    int n;
    printf("\n Enyer the number");
    scanf("%d",&n);
     int a[n][n],num=1;
     int left=0,right=n-1,bottom=n-1,top=0;
    while(top<=bottom && left<=right)
    {
    for(int i=left;i<=right;i++)
    {
        a[top][i]=num++;
    }
        top++;
        

    for(int i=top;i<=bottom;i++)
    {
        a[i][right]=num++;
    }
        right--;
    
    for(int i=right;i>=left;i--)
    {
        a[bottom][i]=num++;
    }
        bottom--;
    
    for(int i=bottom;i>=top;i--)
    {
        a[i][left]=num++;
    }
        left++;
    
}
    for(int i=0;i<n;i++)
    {
        for(int j=0;j<n;j++)
        {
            printf("%d",a[i][j]);
        }
        printf("\n");
    }

}