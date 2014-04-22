/***************************************************
 ***************************************************/

armA = argument0;
aNum = argument1;
larmA = armA.lowerarm;
armA.animationCounter += 1;
i = armA.animationCounter;

if((i mod 25) = 1)
{
    shoot = instance_create(armA.x+(larmA.sprite_height+10)*image_xscale,armA.y,bulletObject5);
    shoot.origPlayer = id;
    shoot.hspeed = larmA.image_xscale*32;
    shoot.player = id;
    audio_play_sound(heavy_lazer_pulse,1,false);
}

armA.image_angle = angle_ease(armA.image_angle, 80*image_xscale, 3);
larmA.image_angle = angle_ease(larmA.image_angle, 80*image_xscale+(i mod 25)*2*image_xscale, 2);
if(i mod 25 = 24)
{
    //end
    player.state = string('tonorm');
    armA.animationCounter = 0;
    player.attack[aNum] = false;
    canSetAttack = true;
}
