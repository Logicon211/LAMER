arm = argument0;

arm.x = x-10*(image_xscale/abs(image_xscale))-image_angle/2;
arm.y = y+vspeedvar/4;
arm.image_xscale = image_xscale;

if(image_xscale>0)
{
     arm.depth = depth-1;
}
else
{
     arm.depth = depth+4;
}

arm.image_angle = 2*image_angle;
