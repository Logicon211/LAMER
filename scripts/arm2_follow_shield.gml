arm = argument0;

arm.x = x-10*image_xscale;
arm.y = y;
arm.image_xscale = image_xscale;

if(image_xscale>0)
{
     arm.depth = depth-2;
}
else
{
     arm.depth = depth+4;
}

arm.image_angle = angle_ease(arm.image_angle,70*arm.image_xscale,8);
