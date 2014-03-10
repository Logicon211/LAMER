var type = argument0; //0 = primary, 1 = secondary, 2 = energy
var xIn = argument1;
var yIn = argument2;
var scaleIn = argument3;
var playerIn = argument4;

if(type == 0)
{
    hueBar[playerIn] = instance_create(xIn, yIn, hue_prime_o);
}
if(type == 1)
{
    hueBar[playerIn] = instance_create(xIn, yIn, hue_2_o);
}
if(type == 2)
{
    hueBar[playerIn] = instance_create(xIn, yIn, hue_glow_o);
}
hueBar[playerIn].image_xscale = scaleIn;
hueBar[playerIn].image_yscale = scaleIn;
hueBar[playerIn].owningPlayer = playerIn;
if(type == 0)
{
    hue_prime = playerColors[playerIn, 0];
    hueBar[playerIn].xTrack = hue_prime;
}
else if(type == 1)
{
    hue_2 = playerColors[playerIn, 3];
    hueBar[playerIn].xTrack = hue_2;
}
else if(type == 2)
{
    hue_glow = playerColors[playerIn, 6];
    hueBar[playerIn].xTrack = hue_glow;
}

if(type == 0)
{
    satBar[playerIn] = instance_create(xIn, yIn + 30, sat_prime_o);
}
if(type == 1)
{
    satBar[playerIn] = instance_create(xIn, yIn + 30, sat_2_o);
}
if(type == 2)
{
    satBar[playerIn] = instance_create(xIn, yIn + 30, sat_glow_o);
}
satBar[playerIn].image_xscale = scaleIn;
satBar[playerIn].image_yscale = scaleIn;
satBar[playerIn].owningPlayer = playerIn;
if(type == 0)
{
    sat_prime = playerColors[playerIn, 1];
    satBar[playerIn].xTrack = sat_prime;
}
else if(type == 1)
{
    sat_2 = playerColors[playerIn, 4];
    satBar[playerIn].xTrack = sat_2;
}

else if(type == 2)
{
    sat_glow = playerColors[playerIn, 7];
    satBar[playerIn].xTrack = sat_glow;
}


if(type == 0)
{
    valBar[playerIn] = instance_create(xIn, yIn + 60, val_prime_o);
}
if(type == 1)
{
    valBar[playerIn] = instance_create(xIn, yIn + 60, val_2_o);
}
if(type == 2)
{
    valBar[playerIn] = instance_create(xIn, yIn + 60, val_glow_o);
}
valBar[playerIn].image_xscale = scaleIn;
valBar[playerIn].image_yscale = scaleIn;
valBar[playerIn].owningPlayer = playerIn;
if(type == 0)
{
    val_prime = playerColors[playerIn, 2];
    valBar[playerIn].xTrack = val_prime;
}
else if(type == 1)
{
    val_2 = playerColors[playerIn, 5];
    valBar[playerIn].xTrack = val_2;
}
else if(type == 2)
{
    val_glow = playerColors[playerIn, 8];
    valBar[playerIn].xTrack = val_glow;
}

