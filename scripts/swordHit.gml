dmg = argument0;
xImp = argument1;
yImp = argument2;

for(i=0; i<instance_number(player_o); i++)
{
    if(instance_place(x,y,instance_find(player_o,i)))
    {
        derp = instance_find(player_o,i);
        if(derp != player)
        {
            derp.health2 -= dmg;
            derp.hspeed = xImp*image_xscale;
            derp.vspeed = yImp*image_xscale;
            derp.airborne = true;
        }
    }
}
