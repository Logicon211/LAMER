x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
obj = argument4;


a = x2-x1;
b = y2-y1;
if(a=0){a=1;}
if(b=0){b=1;}

if(a>0)
{
    if(b>0)
    {
        if(a>b)
        {
            for(i=a;i>0;i--)
            {
                r=a/b;
                a-=1;
                b-=(1/r);
                instance_create(x1+a,y1+b,obj);
            }
        }
        else
        {
            for(i=b;i>0;i--)
            {
                r=b/a;
                b-=1;
                a-=(1/r);
                instance_create(x1+a,y1+b,obj);
            }
        }
    }
    else if(b<0)
    {
        if(a>abs(b))
        {
            for(i=a;i>0;i--)
            {
                r=abs(a/b);
                a-=1;
                b+=(1/r);
                instance_create(x1+a,y1+b,obj);
            }
        }
        else
        {
            for(i=b;i<0;i++)
            {
                r=abs(b/a);
                b+=1;
                a-=(1/r);
                instance_create(x1+a,y1+b,obj);
            }
        }
    }
    else
    {
        for(a=a;a>0;a--)
        {
            instance_create(x1+a,y2,obj);
        }
        
    }
}
else if(a<0)
{
    if(b>0)
    {
        if(abs(a)>b)
        {
            for(i=a;i<0;i++)
            {
                r=abs(a/b);
                a+=1;
                b-=(1/r);
                instance_create(x1+a,y1+b,obj);
            }
        }
        else
        {
            for(i=b;i>0;i--)
            {
                r=abs(b/a);
                b-=1;
                a+=(1/r);
                instance_create(x1+a,y1+b,obj);
            }
        }
    }
    else if(b<0)
    {
        if(a<b)
        {
            for(i=a;i<0;i++)
            {
                r=a/b;
                a+=1;
                b+=(1/r);
                instance_create(x1+a,y1+b,obj);
            }
        }
        else
        {
            for(i=b;i<0;i++)
            {
                r=abs(b/a);
                b+=1;
                a+=(1/r);
                instance_create(x1+a,y1+b,obj);
            }
        }
    }
    else
    {
        for(a=a;a<0;a++)
        {
            instance_create(x1+a,y2,obj);
        }
        
    }
}
else if(b>0)
{
    for(b=b;b>0;b--)
    {
        instance_create(x2,y1+b,obj);
    }
}
else if(b<0)
{
    for(b=b;b<0;b++)
    {
        instance_create(x2,y1+b,obj);
    }
}
