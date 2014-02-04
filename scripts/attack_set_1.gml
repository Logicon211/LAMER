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
attack_var = argument2;
other_arm = argument3;
lowerarm = argument4;



if(!arm.isAttacking)
{
    arm.isAttacking = true;
}

/***************************************************
  Attack Set 1 - Type 0 - Sword
 ***************************************************/
if(attack_type = 0)
{
    arm.animation_counter += 1;
    //Upward Slash pt1 - pull back
    if(arm.animation_counter < 8)
    {
        image_angle -= 3*image_xscale;
        arm.image_angle = angle_ease(arm.image_angle,-90*image_xscale,2);
        arm.lower_angle = -60*image_xscale;
        if(!other_arm.isAttacking)
        {
            other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
            other_arm.lower_angle = 80*image_xscale;
        }
    }
    //Upward Slash pt2 - swing
    else if(arm.animation_counter < 12)
    {
        image_angle += 6*image_xscale;
        arm.image_angle = angle_ease(arm.image_angle,200*image_xscale,2);
        arm.lower_angle = 240*image_xscale;
        if(!other_arm.isAttacking)
        {
            other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
            other_arm.lower_angle = 80*image_xscale;
        }
    }
    //Upward Slash pt3 - hold sword up
    else if(arm.animation_counter < 20)
    {
        arm.image_angle = angle_ease(arm.image_angle,140*image_xscale,16);
        arm.lower_angle = 200*image_xscale;
        if(!other_arm.isAttacking)
        {
            other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
            other_arm.lower_angle = 80*image_xscale;
        }
    }
    //Upward Slash pt4 - open to downward slash
    else if(arm.animation_counter < 30)
    {
        arm.image_angle = angle_ease(arm.image_angle,140*image_xscale,16);
        arm.lower_angle = 200*image_xscale;
        if(!other_arm.isAttacking)
        {
            other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
            other_arm.lower_angle = 80*image_xscale;
        }
        if(attack1_check())
        {
            arm.animation_counter = 31;
        }
    }
    //Downward Slash pt1 - swing
    else if(arm.animation_counter > 30 && arm.animation_counter < 40)
    {
        arm.image_angle = angle_ease(arm.image_angle,-20*image_xscale,4);
        arm.lower_angle = -20*image_xscale;
        if(!other_arm.isAttacking)
        {
            other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
            other_arm.lower_angle = 80*image_xscale;
        }
    }
    //Downward Slash pt2 - prepare for stab
    else if(arm.animation_counter > 30 && arm.animation_counter < 50)
    {
        arm.image_angle = angle_ease(arm.image_angle,-100*image_xscale,8);
        arm.lower_angle = -280*image_xscale;
        if(!other_arm.isAttacking)
        {
            other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
            other_arm.lower_angle = 80*image_xscale;
        }
    }
    //Downward Slash pt3 - open to stab
    else if(arm.animation_counter > 30 && arm.animation_counter < 60)
    {
        arm.image_angle = angle_ease(arm.image_angle,-100*image_xscale,8);
        arm.lower_angle = -280*image_xscale;
        if(!other_arm.isAttacking)
        {
            other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
            other_arm.lower_angle = 80*image_xscale;
        }
        if(attack1_check())
        {
            arm.animation_counter = 61;
        }
    }
    //end from Pre-Stab
    else if(arm.animation_counter = 60)
    {
        arm.lower_angle = 1234;
        lowerarm.image_angle = 75*image_xscale;
        arm.isAttacking = false;
        arm.animation_counter = 0;
        arm.lower_angle = 1234;
        other_arm.lower_angle = 1234;
    }
    //Stab pt1 - thrust
    else if(arm.animation_counter > 60 && arm.animation_counter < 70)
    {
        arm.image_angle = angle_ease(arm.image_angle,90*image_xscale,2);
        arm.lower_angle = -280*image_xscale;
        if(!other_arm.isAttacking)
        {
            other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
            other_arm.lower_angle = 80*image_xscale;
        }
    }
    //end attack
    else
    {
        arm.isAttacking = false;
        arm.animation_counter = 0;
        arm.lower_angle = 1234;
        other_arm.lower_angle = 1234;
    }
}

/***************************************************
  END Attack Set 1 - Type 0 - Sword
 ***************************************************/

/***************************************************
  Attack Set 1 - Type 1 - BF Sword
 ***************************************************/

if(attack1_type=1)
{
    arm.image_angle += random(300);
}

/***************************************************
  END Attack Set 1 - Type 1 - BF Sword
 ***************************************************/

/***************************************************
  Attack Set 1 - Type 2 - Gun
 ***************************************************/

if(attack1_type=2)
{
    arm.image_angle += random(300);
}

/***************************************************
  END Attack Set 1 - Type 2 - Gun
 ***************************************************/

/***************************************************
  Attack Set 1 - Type 3 - BF Gun
 ***************************************************/

if(attack1_type=3)
{
    arm.image_angle += random(300);
}

/***************************************************
  END Attack Set 1 - Type 3 - BF Gun
 ***************************************************/

/***************************************************
  Attack Stopper
 ***************************************************/
 
if(arm.isAttacking=false)
{
    if(attack_var = 1){attack1 = false;}
    if(attack_var = 2){attack2 = false;}
}

/***************************************************
  END Attack Stopper
 ***************************************************/
