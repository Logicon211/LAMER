armA = argument0;
aNum = argument1;
armB = argument2;
bNum = argument3;
spd = argument4;//number, ie 10, where 1 is slow 10 is fast
spd = (1/spd)*5;//now spd can be multiplied
larmA = armA.lowerarm;
larmB = armB.lowerarm;

armA.animationCounter += 1;
i=armA.animationCounter;

/***************************************************
  A
   --- Basic swing
    attackVar = 0
    
  A + Direction
   --- Heavy swing
    attackVar = 1
    
  A + Direction + Boost
   --- Heavy distance swing
    attackVar = 2
   
 ***************************************************/

if(canSetAttack)
{
    attackVar = 1;
    if(left_check() or right_check())
    {
        attackVar = 0;
        if(boost_check())
        {
            attackVar = 2;
        }
    }
    else if(up_check())
    {
        attackVar = 3;
        if(boost_check())
        {
            attackVar = 4;
        }
    }
    else if(down_check())
    {
        attackVar = 1;
        if(boost_check())
        {
            attackVar = 2;
        }
    }
    canSetAttack = false;
}

//**************************************************
//ATTACKVAR = 0
//**************************************************
if(attackVar = 0)
{
    if(i>0 and i<6)
    {
        larmA.attacking = false;
        //raise sword
        //position
        sVar = 6;
        yEase10(player.y+0-player.heightAdjust,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, 15*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,15*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -90*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, -90*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -50*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 50*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, -30*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -60*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 50*image_xscale, sVar);
           lleg2.image_angle = angle_ease(lleg2.image_angle, 40*image_xscale, sVar);
    }
    else if(i<10)
    {
        larmA.attacking = true;
        //swing sword
        //position
        sVar = 3;
        yEase10(player.y+10-player.heightAdjust,sVar);
        xMove10(4*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-10*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 140*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, 220*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, 0*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 60*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, -30*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -60*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 50*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, 40*image_xscale, sVar);
    }
    else if(i<20)
    {
        larmA.attacking = true;
        //OPEN TO SWING SWORD 2
        if(attack1_check_pressed())
        {   armA.animationCounter = 21;
            i=armA.animationCounter;
        }
        //position
        sVar = 3;
        yEase10(player.y+10-player.heightAdjust,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-10*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 140*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, 220*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -10*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 60*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, -30*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -60*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 50*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, 40*image_xscale, sVar);
    }
    else if(i>21 and i<28)
    {
        larmA.attacking = true;
        //sword swing 2
        //position
        sVar = 3;
        yEase10(player.y+20-player.heightAdjust,sVar);
        xMove10(8*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -30*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-40*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -90*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -90*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -50*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 50*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -20*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -30*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -60*image_xscale, sVar);
    }
    else if(i>21 and i<36)
    {
        larmA.attacking = false;
        //OPEN TO SWING SWORD 3
        if(attack1_check_pressed())
        {   armA.animationCounter = 37;
            i=armA.animationCounter;
        }
        //position
        sVar = 8;
        yEase10(player.y+20-player.heightAdjust,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, -30*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-40*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -90*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, -90*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -50*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 50*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -20*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -30*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -60*image_xscale, sVar);
    }
    else if(i>37 and i<46)
    {
        larmA.attacking = true;
        //sword swing 3
        //position
        sVar = 3;
        yEase10(player.y+0-player.heightAdjust,sVar);
        xMove10(10*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -30*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-40*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 180*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, 200*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -90*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -70*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, -30*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -60*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 50*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, 40*image_xscale, sVar);
    }
    else if(i>45)
    {
        larmA.attacking = false;
        if(i=54)
        {
            //end
            player.state = string('tonorm');
            armA.animationCounter = 0;
            player.attack[aNum] = false;
            canSetAttack = true;
        }
        //ease end animation
        //position
        sVar = 6;
        yEase10(player.y+0-player.heightAdjust,sVar);
        xMove10(4*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, 0*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle, 0*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 0*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, 0*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, 0*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 0*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, -10*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -10*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 10*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, 10*image_xscale, sVar);
    }
    else
    {
        armA.animationCounter = 46;
        i=armA.animationCounter;
    }
}

//**************************************************
//ATTACKVAR = 1
//**************************************************
else if(attackVar=1)
{
    if(i>0 and i<8)
    {
        larmA.attacking = true;
        //raise sword-
        //position
        sVar = 6*spd;
        yEase10(player.y+30-player.heightAdjust,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, 30*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,20*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -200*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, -160*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -10*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 60*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 60*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -20*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -80*image_xscale, sVar);
    }
    else if(i<14)
    {
        larmA.attacking = true;
        //swing sword
        //position
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+70*image_yscale,sVar);
        xMove10(15*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, sVar);
    }
    else if(i<16)
    {
        larmA.attacking = true;
        //swing sword
        //position
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+70*image_yscale,sVar);
        xMove10(15*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, sVar);
    }
    else if(i<30)
    {
        larmA.attacking = true;
        //swing sword
        //position
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+70*image_yscale,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, sVar);
           //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, sVar);
    }
    else if(i<34)
    {
        larmA.attacking = false;
        //swing sword
        //position
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+0*image_yscale,sVar);
        xMove10(5*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -5*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-0*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -360*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, -360*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -10*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 20*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -10*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -20*image_xscale, sVar);
    }
    else
    {
        larmA.attacking = false;
        armA.image_angle += 360*image_xscale;
        larmA.image_angle += 360*image_xscale;
        //end
        player.state = string('tonorm');
        armA.animationCounter = 0;
        player.attack[aNum] = false;
        canSetAttack = true;
    }
}

//**************************************************
//ATTACKVAR = 2
//**************************************************
else if(attackVar = 2)
{
    if(i>0 and i<10)
    {
        larmA.attacking = false;
        //pullback sword
        //position
        effect_create_above(ef_flare,x,y-50-i,30,c_dkgray);
        sVar = 3*spd;
        yEase10(player.y+50-player.heightAdjust,sVar);
        xMove10(-2*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -30*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -90*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, -90*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 20*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 80*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -10*image_xscale, 10);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 40*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -110*image_xscale, 6);
    }
    else if(i<16)
    {
        larmA.attacking = true;
        //swing sword
        //position
        effect_create_above(ef_flare,x,y-50-i,30,c_blue);
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+0*image_yscale,sVar);
        xMove10(25*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -15*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-10*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 150*image_xscale, 3);
        larmA.image_angle = angle_ease(larmA.image_angle, 240*image_xscale, 3);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -150*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -100*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 90*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -50*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -40*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -50*image_xscale, sVar);
    }
    else if(i<30)
    {
        larmA.attacking = true;
        //OPEN TO SWING SWORD 2
        effect_create_above(ef_flare,x,y-50-i,40,make_color_hsv(70,255,255));
        if(attack1_check_pressed())
        {   armA.animationCounter = 32;
            i=armA.animationCounter;
        }
        //position
        sVar = 10*spd;
        yEase10(player.y-player.heightAdjust+10*image_yscale,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,0*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 150*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, 240*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -120*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -80*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -50*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -60*image_xscale, sVar);
    }
    else if(i>31 and i<40)
    {
        larmA.attacking = true;
        //raise sword
        //position
        sVar = 6*spd;
        yEase10(player.y-player.heightAdjust+30,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, 30*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,20*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -200*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, -160*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -10*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 60*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 60*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -20*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -80*image_xscale, sVar);
    }
    else if(i>31 and i<46)
    {
        larmA.attacking = true;
        //swing sword
        //position
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+70*image_yscale,sVar);
        xMove10(15*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, sVar);
    }
    else if(i>31 and i<48)
    {
        larmA.attacking = true;
        //swing sword
        //position
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+70*image_yscale,sVar);
        xMove10(15*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, sVar);
    }
    else if(i>31 and i<62)
    {
        larmA.attacking = true;
        //swing sword
        //position
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+70*image_yscale,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, sVar);
    }
    else if(i>31)
    {
        larmA.attacking = false;
        if(i=70)
        {
            //end
            player.state = string('tonorm');
            armA.animationCounter = 0;
            player.attack[aNum] = false;
            canSetAttack = true;
        }
        if(sVar=3*spd)//from last animation step (if condition is met once)
        {   armA.image_angle += 360*image_xscale;
        }
        //swing sword
        //position
        sVar = 4*spd;
        yEase10(player.y-player.heightAdjust+0*image_yscale,sVar);
        xMove10(5*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -5*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-0*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 0*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, 0*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -10*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 20*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -10*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -20*image_xscale, sVar);
    }
    else
    {
        larmA.attacking = false;
        armA.animationCounter = 63;
        i=armA.animationCounter;
    }
}
//**************************************************
//ATTACKVAR = 3
//**************************************************
else if(attackVar=3)
{
    if(i>0 and i<6)
    {
        larmA.attacking = false;
        //prepare swing sword
        //position
        sVar = 4*spd;
        yEase10(player.y-player.heightAdjust+30,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-10*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 30*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, -180*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -80*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 0*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 80*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -10*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 30*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -60*image_xscale, sVar);
    }
    else if(i<18)
    {
        larmA.attacking = true;
        //swing sword
        //position
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+0*image_yscale,sVar);
        xMove10(0*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, 20*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-0*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 175*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -185*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -80*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -30*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -10*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -20*image_xscale, sVar);
    }
    else if(i<22)
    {
        larmA.attacking = false;
        //prepare swing sword
        //position
        sVar = 4*spd;
        yEase10(player.y-player.heightAdjust+0,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, 0*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,0*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 0*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, -350*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -10*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 30*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -10*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -20*image_xscale, sVar);
    }
    else
    {
        larmA.attacking = false;
        larmA.image_angle += 360*image_xscale;
        //end
        player.state = string('tonorm');
        armA.animationCounter = 0;
        player.attack[aNum] = false;
        canSetAttack = true;
    }
}

//**************************************************
//ATTACKVAR = 4
//**************************************************
else if(attackVar=4)
{
    if(i>0 and i<14)
    {
        //prepare swing sword
        //position
        sVar = 6*spd;
        yEase10(player.y-player.heightAdjust+70*image_yscale,sVar);
        xMove10(0*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -40*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-60*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -10*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, -80*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -40*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 90*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 0*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -110*image_xscale, sVar);
    }
    else if(i<18)
    {
        //swing sword
        //position
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+70*image_yscale,sVar);
        xMove10(-5*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, 10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,20*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, 320*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, 40*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 90*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 80*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 10*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 10*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -110*image_xscale, sVar);
    }
    else if(i<22)
    {
        //swing sword
        //position
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+70*image_yscale,sVar);
        xMove10(-5*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, 10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,20*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 340*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, 320*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, 40*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 90*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 80*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 10*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 10*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -110*image_xscale, sVar);
    }
    else if(i<26)
    {
        //prepare swing sword
        //position
        sVar = 3*spd;
        yEase10(player.y-player.heightAdjust+70*image_yscale,sVar);
        xMove10(0*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, 10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,20*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 340*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, 320*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, 40*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 90*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 80*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 10*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 10*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -110*image_xscale, sVar);
    }
    else if(i<34)
    {
        //prepare swing sword
        //position
        sVar = 4*spd;
        yEase10(player.y-player.heightAdjust+0,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, 0*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,0*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 0*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, 10*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -10*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, 30*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -10*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -20*image_xscale, sVar);
    }
    else
    {
        //end
        player.state = string('tonorm');
        armA.animationCounter = 0;
        player.attack[aNum] = false;
        canSetAttack = true;
    }
}
