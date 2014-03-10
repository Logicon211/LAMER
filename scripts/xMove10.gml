/*
    armA
    armB
    larmA
    larmB
    leg1
    leg2
    lleg1
    lleg2
    head
    core (self)
*/

xInVar = argument0;
//if player.xInVar = 0 effect_create_above(ef_firework,x,y,0.5,c_fuchsia);

//player.hspeed += xInVar;

player.xInVar = xInVar;

//if player.xInVar = 0 effect_create_above(ef_firework,x,y,0.5,c_aqua);

//player
player.x += xInVar;
with(player)
{   if(xInVar>0)//moving right
    {   while(instance_place(x,y,land_parent))
        {   x-=1;
            xInVar-=1;
        }
    }
        
    else//moving left
    {   while(instance_place(x,y,land_parent))
        {   x+=1;
            xInVar-=1;
        }
    }
}
xInVar = player.xInVar;
//core
x += xInVar;
//head
head.x += xInVar;
//arm
armA.x += xInVar;
//lower arm
larmA.x += xInVar;
//arm2
armB.x += xInVar;
//lower arm2
larmB.x += xInVar;
//leg1
leg1.x += xInVar;
//lower leg1
lleg1.x += xInVar;
//leg2
leg2.x += xInVar;
//lower leg2
lleg2.x += xInVar;
