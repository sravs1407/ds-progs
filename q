#include<stdio.h>
int a[10];
int f=0;
int r=0;
void insert()
{
        if(r==10)
                printf("queue overflow");
        else
        {
                int ele;
              printf("enter element to be inserted");
                scanf("%d",&ele);
                a[r]=ele;
                r+=1;
        }
}
void delete()
{
        if(r==f)
                printf("queue underflow");
        else
        {
            printf("element deleted:%d",a[f]);
            f+=1;
        }
}
void display()
{
    int i;
    for(i=f;i<r;i++)
      printf("\n%d",a[i]);
}
void main()
{
    int c,n;
    printf("enter n value");
    scanf("%d",&n);
    for(int i=0;i<n;i++)
    {
    printf("1-insert 2-delete");
    scanf("%d",&c);
    if(c==1)
      insert();
    else if(c==2)
      delete();
    }
    display();
}
