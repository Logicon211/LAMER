arm = argument0;

arm.x = x-10*image_xscale;
arm.y = y;
arm.image_xscale = image_xscale;

if(image_xscale>0)
{
     arm.depth = depth+4;
}
else
{
     arm.depth = depth-2;
}

if(!arm.isAttacking)
{
    
}
if(player.state=string('kneel'))
{
    arm.lower_angle = 50*image_xscale;
    arm.image_angle = angle_ease(arm.image_angle,-30*image_xscale,4);
}
else
{
    arm.lower_angle = 1234;
}
