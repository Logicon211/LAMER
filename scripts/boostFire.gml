x1 = argument0;
y1 = argument1;
x2 = argument2;
y2 = argument3;
scale = argument4;
color = argument5;

//if(!part_system_exists(pSys))
//{
//    pSys = part_system_create();
//}
//if(!part_system_exists(pSys2))
//{
//    pSys2 = part_system_create();
//}
part_system_depth(pSys,-1000)
part_system_depth(pSys2,-1100)

//if(!part_type_exists(ef_boost))
//{
//    ef_boost = part_type_create();
//}
part_type_shape(ef_boost,pt_shape_sphere);
part_type_size(ef_boost,scale/3,scale/2,0,1);
part_type_color1(ef_boost,color);
part_type_life(ef_boost,5,5);
part_type_alpha2(ef_boost,0.5,0);

//if(!part_type_exists(ef_boost))
//{
//    ef_boost2 = part_type_create();
//}
part_type_shape(ef_boost2,pt_shape_flare);
part_type_size(ef_boost2,scale/6,scale/4,0,1);
part_type_color1(ef_boost2,c_white);
part_type_life(ef_boost2,5,5);
part_type_alpha2(ef_boost2,0.5,0);

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
                if(b=0){b=1;}
                r=a/b;
                a-=1;
                b-=(1/r);
                part_particles_create(pSys,x1+a,y1+b,ef_boost,1);
                part_particles_create(pSys2,x1+a,y1+b,ef_boost2,1);
            }
        }
        else
        {
            for(i=b;i>0;i--)
            {
                if(a=0){a=1;}
                r=b/a;
                b-=1;
                a-=(1/r);
                part_particles_create(pSys,x1+a,y1+b,ef_boost,1);
                part_particles_create(pSys2,x1+a,y1+b,ef_boost2,1);
            }
        }
    }
    else if(b<0)
    {
        if(a>abs(b))
        {
            for(i=a;i>0;i--)
            {
                if(b=0){b=1;}
                r=abs(a/b);
                a-=1;
                b+=(1/r);
                part_particles_create(pSys,x1+a,y1+b,ef_boost,1);
                part_particles_create(pSys2,x1+a,y1+b,ef_boost2,1);
            }
        }
        else
        {
            for(i=b;i<0;i++)
            {
                if(a=0){a=1;}
                r=abs(b/a);
                b+=1;
                a-=(1/r);
                part_particles_create(pSys,x1+a,y1+b,ef_boost,1);
                part_particles_create(pSys2,x1+a,y1+b,ef_boost2,1);
            }
        }
    }
    else
    {
        for(a=a;a>0;a--)
        {
            part_particles_create(pSys,x1+a,y1,ef_boost,1);
            part_particles_create(pSys2,x1+a,y1,ef_boost2,1);
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
                if(b=0){b=1}
                r=abs(a/b);
                a+=1;
                b-=(1/r);
                part_particles_create(pSys,x1+a,y1+b,ef_boost,1);
                part_particles_create(pSys2,x1+a,y1+b,ef_boost2,1);
            }
        }
        else
        {
            for(i=b;i>0;i--)
            {
                if(a=0){a=1}
                r=abs(b/a);
                b-=1;
                a+=(1/r);
                part_particles_create(pSys,x1+a,y1+b,ef_boost,1);
                part_particles_create(pSys2,x1+a,y1+b,ef_boost2,1);
            }
        }
    }
    else if(b<0)
    {
        if(a<b)
        {
            for(i=a;i<0;i++)
            {
                if(b=0){b=1}
                r=a/b;
                a+=1;
                b+=(1/r);
                part_particles_create(pSys,x1+a,y1+b,ef_boost,1);
                part_particles_create(pSys2,x1+a,y1+b,ef_boost2,1);
            }
        }
        else
        {
            for(i=b;i<0;i++)
            {
                if(a=0){a=1;}
                r=abs(b/a);
                b+=1;
                a+=(1/r);
                part_particles_create(pSys,x1+a,y1+b,ef_boost,1);
                part_particles_create(pSys2,x1+a,y1+b,ef_boost2,1);
            }
        }
    }
    else
    {
        for(a=a;a<0;a++)
        {
            part_particles_create(pSys,x1+a,y1,ef_boost,1);
            part_particles_create(pSys2,x1+a,y1,ef_boost2,1);
        }
        
    }
}
else if(b>0)
{
    for(b=b;b>0;b--)
    {
        part_particles_create(pSys,x1,y1+b,ef_boost,1);
        part_particles_create(pSys2,x1,y1+b,ef_boost2,1);
    }
}
else if(b<0)
{
    for(b=b;b<0;b++)
    {
        part_particles_create(pSys,x1,y1+b,ef_boost,1);
        part_particles_create(pSys2,x1,y1+b,ef_boost2,1);
    }
}
