/***************************************************
  Attack Set 1
  
  0 - Sword, Upward Slash -> Downward Slash -> Forward Stab
  1 - BF Sword, Same as 0 but slow.
  2 - Gun, 
  3 - BF Gun, 
  
  Run by Titan Core/Torso
  
 ***************************************************/

arm = argument0;
attack_type = argument1;
attacknum = argument2;

if(attack_type = 0)
{
    arm.isAttacking = 1;
    arm.animation_counter += 1;
    //upward slash pt1 - pull back
    if(arm.animation_counter < 4)
    {
        arm.image_angle = angle_ease(arm.image_angle,-45,4);
    }
    //upward slash pt2 - swing
    else if(arm.animation_counter < 8)
    {
        arm.image_angle = angle_ease(arm.image_angle,220,4);
    }
    //upward slash pt3 - hold sword up
    else if(arm.animation_counter < 30)
    {
        arm.image_angle = angle_ease(arm.image_angle,180,4);
    }
    //end attack
    if(arm.animation_counter >= 30)
    {
        arm.isAttacking = false;
        arm.animation_counter = 0;
        attack1=false;
    }
}
if(attack1_type=1)
{
    arm.image_angle += random(300);
}
if(attack1_type=2)
{
    arm.image_angle += random(300);
}
if(attack1_type=3)
{
    arm.image_angle += random(300);
}
