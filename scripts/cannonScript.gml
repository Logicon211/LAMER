/***************************************************
 ***************************************************/

armA = argument0;
aNum = argument1;
larmA = armA.lowerarm;
armA.animationCounter += 1;
i = armA.animationCounter;

if((i mod 70) = 1)
{
    shoot = instance_create(armA.x+larmA.sprite_height*image_xscale,armA.y,CosmosBullet);
    shoot.hspeed = larmA.image_xscale*32;
    shoot.origPlayer = id;
    shoot.player = id;
    audio_play_sound(cannon_shot,1,false);
}

armA.image_angle = angle_ease(armA.image_angle, 80*image_xscale, 3);
larmA.image_angle = angle_ease(larmA.image_angle, 50*image_xscale+(i mod 70)*2*image_xscale, 2);
if(i mod 70 = 69)
{
    //end
    player.state = string('tonorm');
    armA.animationCounter = 0;
    player.attack[aNum] = false;
    canSetAttack = true;
}
