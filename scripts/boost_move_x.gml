modifier = argument0;

if(modifier<0)
{
    if(hspeed<4*modifier)
    {
        hspeed = 4*modifier;
    }
}
else
{
    if(hspeed>4*modifier)
    {
        hspeed = 4*modifier;
    }
}

if(airborne){ hspeed += 2*modifier; }
else{ hspeed += 4*modifier; }
target_hspeed = 16*modifier;
