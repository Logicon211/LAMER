arm.animation_counter += 1;
//Upward Slash pt1 - pull back
if(arm.animation_counter < 8)
{
    head.image_angle = image_angle/2;
    player.hspeed = 5*image_xscale;
    x = player.x;
    image_angle = angle_ease(image_angle,-35*image_xscale,4);
    arm.image_angle = angle_ease(arm.image_angle,-90*image_xscale,2);
    arm.lower_angle = -60*image_xscale;
    if(!other_arm.isAttacking)
    {
        other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
        other_arm.lower_angle = 80*image_xscale;
    }
    leg1.image_angle = angle_ease(leg1.image_angle,60*image_xscale,8);
    leg1.lower_angle = angle_ease(leg1.lower_angle,-90*image_xscale,4);
    leg2.image_angle = angle_ease(leg2.image_angle,-30*image_xscale,8);
    leg2.lower_angle = angle_ease(leg2.lower_angle,-40*image_xscale,4);
    y = y_ease(y,player.y+10,2);
}
//Upward Slash pt2 - swing
else if(arm.animation_counter < 12)
{
    head.image_angle = image_angle/2;
    player.hspeed = 14*image_xscale;
    image_angle = angle_ease(image_angle,-5*image_xscale,2);
    arm.image_angle = angle_ease(arm.image_angle,200*image_xscale,2);
    arm.lower_angle = 240*image_xscale;
    if(!other_arm.isAttacking)
    {
        other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
        other_arm.lower_angle = 80*image_xscale;
    }
    leg1.image_angle = angle_ease(leg1.image_angle,60*image_xscale,4);
    leg1.lower_angle = angle_ease(leg1.lower_angle,10*image_xscale,2);
    leg2.image_angle = angle_ease(leg2.image_angle,-30*image_xscale,4);
    leg2.lower_angle = angle_ease(leg2.lower_angle,-50*image_xscale,2);
    y = y_ease(y,player.y+20,2);
}
//Upward Slash pt3 - hold sword up
else if(arm.animation_counter < 20)
{
    head.image_angle = image_angle/2;
    image_angle = angle_ease(image_angle,-5*image_xscale,16);
    arm.image_angle = angle_ease(arm.image_angle,140*image_xscale,16);
    arm.lower_angle = 200*image_xscale;
    if(!other_arm.isAttacking)
    {
        other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
        other_arm.lower_angle = 80*image_xscale;
    }
    leg1.image_angle = angle_ease(leg1.image_angle,60*image_xscale,4);
    leg1.lower_angle = angle_ease(leg1.lower_angle,10*image_xscale,2);
    leg2.image_angle = angle_ease(leg2.image_angle,-30*image_xscale,4);
    leg2.lower_angle = angle_ease(leg2.lower_angle,-50*image_xscale,2);
    y = y_ease(y,player.y+20,2);
}
//Upward Slash pt4 - open to downward slash
else if(arm.animation_counter < 30)
{
    head.image_angle = image_angle/2;
    image_angle = angle_ease(image_angle,-5*image_xscale,16);
    arm.image_angle = angle_ease(arm.image_angle,140*image_xscale,16);
    arm.lower_angle = 200*image_xscale;
    if(!other_arm.isAttacking)
    {
        other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
        other_arm.lower_angle = 80*image_xscale;
    }
    if(attack1_check_pressed())
    {
        arm.animation_counter = 31;
    }
    leg1.image_angle = angle_ease(leg1.image_angle,60*image_xscale,4);
    leg1.lower_angle = angle_ease(leg1.lower_angle,10*image_xscale,2);
    leg2.image_angle = angle_ease(leg2.image_angle,-30*image_xscale,4);
    leg2.lower_angle = angle_ease(leg2.lower_angle,-50*image_xscale,2);
    y = y_ease(y,player.y+20,2);
}
//Downward Slash pt1 - swing
else if(arm.animation_counter > 30 && arm.animation_counter < 36)
{
    head.image_angle = image_angle/2;
    player.hspeed = 14*image_xscale;
    image_angle = angle_ease(image_angle,-45*image_xscale,3);
    arm.image_angle = angle_ease(arm.image_angle,-100*image_xscale,4);
    arm.lower_angle = -20*image_xscale;
    if(!other_arm.isAttacking)
    {
        other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
        other_arm.lower_angle = 80*image_xscale;
    }
    leg1.image_angle = angle_ease(leg1.image_angle,-30*image_xscale,16);
    leg1.lower_angle = angle_ease(leg1.lower_angle,-50*image_xscale,8);
    leg2.image_angle = angle_ease(leg2.image_angle,60*image_xscale,16);
    leg2.lower_angle = angle_ease(leg2.lower_angle,10*image_xscale,8);
    y = y_ease(y,player.y+10,2);
}
//Downward Slash pt2 - prepare for stab
else if(arm.animation_counter > 30 && arm.animation_counter < 50)
{
    head.image_angle = image_angle/2;
    player.hspeed = 2*image_xscale;
    image_angle = angle_ease(image_angle,-20*image_xscale,4);
    arm.image_angle = angle_ease(arm.image_angle,-100*image_xscale,8);
    arm.lower_angle = -280*image_xscale;
    if(!other_arm.isAttacking)
    {
        other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
        other_arm.lower_angle = 80*image_xscale;
    }
    leg1.image_angle = angle_ease(leg1.image_angle,-30*image_xscale,16);
    leg1.lower_angle = angle_ease(leg1.lower_angle,-50*image_xscale,8);
    leg2.image_angle = angle_ease(leg2.image_angle,70*image_xscale,16);
    leg2.lower_angle = angle_ease(leg2.lower_angle,-20*image_xscale,8);
    y = y_ease(y,player.y+10,2);
}
//Downward Slash pt3 - open to stab
else if(arm.animation_counter > 30 && arm.animation_counter < 60)
{
    head.image_angle = image_angle/2;
    player.hspeed = 2*image_xscale;
    image_angle = angle_ease(image_angle,-20*image_xscale,4);
    arm.image_angle = angle_ease(arm.image_angle,-100*image_xscale,8);
    arm.lower_angle = -280*image_xscale;
    if(!other_arm.isAttacking)
    {
        other_arm.image_angle = angle_ease(image_angle,-90*image_xscale,8);
        other_arm.lower_angle = 80*image_xscale;
    }
    if(attack1_check_pressed())
    {
        arm.animation_counter = 61;
    }
    leg1.image_angle = angle_ease(leg1.image_angle,-30*image_xscale,16);
    leg1.lower_angle = angle_ease(leg1.lower_angle,-50*image_xscale,8);
    leg2.image_angle = angle_ease(leg2.image_angle,70*image_xscale,16);
    leg2.lower_angle = angle_ease(leg2.lower_angle,-20*image_xscale,8);
    y = y_ease(y,player.y+10,2);
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
    player.state = string('tonorm');
}
//Stab pt1 - thrust
else if(arm.animation_counter > 60 && arm.animation_counter < 70)
{
    head.image_angle = image_angle/2;
    player.hspeed = 18*image_xscale;
    image_angle = angle_ease(image_angle,-35*image_xscale,4);
    arm.image_angle = angle_ease(arm.image_angle,90*image_xscale,2);
    arm.lower_angle = -280*image_xscale;
    if(!other_arm.isAttacking)
    {
        other_arm.image_angle = angle_ease(image_angle,-280*image_xscale,8);
        other_arm.lower_angle = -70*image_xscale;
    }
    leg1.image_angle = angle_ease(leg1.image_angle,-30*image_xscale,4);
    leg1.lower_angle = angle_ease(leg1.lower_angle,-50*image_xscale,2);
    leg2.image_angle = angle_ease(leg2.image_angle,60*image_xscale,4);
    leg2.lower_angle = angle_ease(leg2.lower_angle,10*image_xscale,2);
    y = y_ease(y,player.y+20,2);
}
//animation recovery time
else if(arm.animation_counter > 60 && arm.animation_counter < 76)
{
}
//end attack
else
{
    arm.isAttacking = false;
    arm.animation_counter = 0;
    arm.lower_angle = 1234;
    other_arm.lower_angle = 1234;
    player.state = string('tonorm');
}
