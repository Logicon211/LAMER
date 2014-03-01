/***************************************************
  EXAMPLE USE:
  
  perfectTrailEffect(oldX,oldY,x+hspeed,y+vspeed,ef_flare, c_red);
  
  Renders a trail of c_red colored ef_flare effects 
  from (oldX,oldY) to (x+hspeed,y+vspeed)
  
  
 ***************************************************/
x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
effectIn = argument4;
colorIn = argument5;
pNum = argument6;
colorLevel = 3;

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
                effect_create_above(effect,x1+a,y1+b,size,getPlayerColor(pNum,colorLevel));;
            }
        }
        else
        {
            for(i=b;i>0;i--)
            {
                r=b/a;
                b-=1;
                a-=(1/r);
                effect_create_above(effect,x1+a,y1+b,size,getPlayerColor(pNum,colorLevel));;
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
                effect_create_above(effect,x1+a,y1+b,size,getPlayerColor(pNum,colorLevel));;
            }
        }
        else
        {
            for(i=b;i<0;i++)
            {
                r=abs(b/a);
                b+=1;
                a-=(1/r);
                effect_create_above(effect,x1+a,y1+b,size,getPlayerColor(pNum,colorLevel));;
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
                effect_create_above(effect,x1+a,y1+b,size,getPlayerColor(pNum,colorLevel));;
            }
        }
        else
        {
            for(i=b;i>0;i--)
            {
                r=abs(b/a);
                b-=1;
                a+=(1/r);
                effect_create_above(effect,x1+a,y1+b,size,getPlayerColor(pNum,colorLevel));;
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
                effect_create_above(effect,x1+a,y1+b,size,getPlayerColor(pNum,colorLevel));;
            }
        }
        else
        {
            for(i=b;i<0;i++)
            {
                r=abs(b/a);
                b+=1;
                a+=(1/r);
                effect_create_above(effect,x1+a,y1+b,size,getPlayerColor(pNum,colorLevel));;
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
