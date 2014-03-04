armA = argument0;
aNum = argument1;
armB = argument2;
bNum = argument3;
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
    attackVar = 0;
    if(left_check() or right_check())
    {
        attackVar = 1;
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
        attackVar = 1;//5
        if(boost_check())
        {
            attackVar = 2;//6
        }
    }
    canSetAttack = false;
}

//**************************************************
//ATTACKVAR = 0
//**************************************************
if(attackVar = 0)
{
    if(i*0.75>0 and i*0.75<6)
    {
        //raise sword
        //position
        aVar = 6;
        yEase10(player.y+0,aVar*0.75);
        //head
        head.image_angle = angle_ease(head.image_angle, 15*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,15*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -90*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, -90*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -50*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 50*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, -30*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -60*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 50*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, 40*image_xscale, aVar*0.75);
    }
    else if(i*0.75<10)
    {
        //swing sword
        //position
        aVar = 3;
        yEase10(player.y+10,aVar*0.75);
        xMove10(2*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-10*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 140*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, 220*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, 0*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 60*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, -30*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -60*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 50*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, 40*image_xscale, aVar*0.75);
    }
    else if(i*0.75<20)
    {
        //OPEN TO SWING SWORD 2
        if(attack1_check_pressed())
        {   armA.animationCounter = 21;
            i=armA.animationCounter;
        }
        //position
        aVar = 3;
        yEase10(player.y+10,aVar*0.75);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-10*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 140*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, 220*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -10*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 60*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, -30*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -60*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 50*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, 40*image_xscale, aVar*0.75);
    }
    else if(i*0.75>21 and i*0.75<28)
    {
        //sword swing 2
        //position
        aVar = 3;
        yEase10(player.y+20,aVar*0.75);
        xMove10(8*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -30*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-40*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -90*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -90*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -50*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 50*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -20*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -30*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -60*image_xscale, aVar*0.75);
    }
    else if(i*0.75>21 and i*0.75<36)
    {
        //OPEN TO SWING SWORD 3
        if(attack1_check_pressed())
        {   armA.animationCounter = 37;
            i=armA.animationCounter;
        }
        //position
        aVar = 8;
        yEase10(player.y+20,aVar*0.75);
        //head
        head.image_angle = angle_ease(head.image_angle, -30*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-40*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -90*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, -90*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -50*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 50*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -20*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -30*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -60*image_xscale, aVar*0.75);
    }
    else if(i*0.75>37 and i*0.75<46)
    {
        //sword swing 3
        //position
        aVar = 3;
        yEase10(player.y+0,aVar*0.75);
        xMove10(15*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -30*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-40*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 180*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, 200*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -90*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -70*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, -30*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -60*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 50*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, 40*image_xscale, aVar*0.75);
    }
    else if(i*0.75>45)
    {
        if(i*0.75=54)
        {
            //end
            player.state = string('tonorm');
            armA.animationCounter = 0;
            player.attack[aNum] = false;
            canSetAttack = true;
        }
        //ease end animation
        //position
        aVar = 6;
        yEase10(player.y+0,aVar*0.75);
        xMove10(4*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, 0*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle, 0*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 0*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, 0*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, 0*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 0*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, -10*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -10*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 10*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, 10*image_xscale, aVar*0.75);
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
    if(i*0.75>0 and i*0.75<8)
    {
        //raise sword
        //position
        aVar = 6;
        yEase10(player.y+30,aVar*0.75);
        //head
        head.image_angle = angle_ease(head.image_angle, 30*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,20*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -200*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, -160*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -10*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 60*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 60*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -20*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -80*image_xscale, aVar*0.75);
    }
    else if(i*0.75<14)
    {
        //swing sword
        //position
        aVar = 3
        yEase10(player.y+70*image_yscale,aVar*0.75);
        xMove10(15*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, aVar*0.75);
    }
    else if(i*0.75<16)
    {
        //swing sword
        //position
        aVar = 3
        yEase10(player.y+70*image_yscale,aVar*0.75);
        xMove10(15*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, aVar*0.75);
    }
    else if(i*0.75<30)
    {
        //swing sword
        //position
        aVar = 3
        yEase10(player.y+70*image_yscale,aVar*0.75);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, aVar*0.75);
           //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, aVar*0.75);
    }
    else if(i*0.75<34)
    {
        //swing sword
        //position
        aVar = 3
        yEase10(player.y+0*image_yscale,aVar*0.75);
        xMove10(5*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -5*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-0*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -360*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, -360*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -10*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 20*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -10*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -20*image_xscale, aVar*0.75);
    }
    else
    {
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
    if(i*0.75>0 and i*0.75<10)
    {
        //pullback sword
        //position
        effect_create_above(ef_flare,x,y-50-i,30,c_dkgray);
        aVar = 3;
        yEase10(player.y+50,aVar*0.75);
        xMove10(-2*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -30*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -90*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, -90*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 20*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 80*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -10*image_xscale, 10);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 40*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -110*image_xscale, 6);
    }
    else if(i*0.75<16)
    {
        //swing sword
        //position
        effect_create_above(ef_flare,x,y-50-i,30,c_blue);
        aVar = 3;
        yEase10(player.y+0*image_yscale,aVar*0.75);
        xMove10(25*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -15*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-10*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 150*image_xscale, 3);
        larmA.image_angle = angle_ease(larmA.image_angle, 240*image_xscale, 3);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -150*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -100*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 90*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -50*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -40*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -50*image_xscale, aVar*0.75);
    }
    else if(i*0.75<30)
    {
        //OPEN TO SWING SWORD 2
        effect_create_above(ef_flare,x,y-50-i,40,make_color_hsv(70,255,255));
        if(attack1_check_pressed())
        {   armA.animationCounter = 32;
            i=armA.animationCounter;
        }
        //position
        aVar = 10;
        yEase10(player.y+10*image_yscale,aVar*0.75);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,0*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 150*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, 240*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -120*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -80*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -50*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -60*image_xscale, aVar*0.75);
    }
    else if(i*0.75>31 and i*0.75<40)
    {
        //raise sword
        //position
        aVar = 6;
        yEase10(player.y+30,aVar*0.75);
        //head
        head.image_angle = angle_ease(head.image_angle, 30*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,20*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -200*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, -160*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -10*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 60*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 60*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -20*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -80*image_xscale, aVar*0.75);
    }
    else if(i*0.75>31 and i*0.75<46)
    {
        //swing sword
        //position
        aVar = 3
        yEase10(player.y+70*image_yscale,aVar*0.75);
        xMove10(15*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, aVar*0.75);
    }
    else if(i*0.75>31 and i*0.75<48)
    {
        //swing sword
        //position
        aVar = 3
        yEase10(player.y+70*image_yscale,aVar*0.75);
        xMove10(15*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, aVar*0.75);
    }
    else if(i*0.75>31 and i*0.75<62)
    {
        //swing sword
        //position
        aVar = 3
        yEase10(player.y+70*image_yscale,aVar*0.75);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -280*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 100*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -60*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -90*image_xscale, aVar*0.75);
    }
    else if(i*0.75>31)
    {
        if(i*0.75=70)
        {
            //end
            player.state = string('tonorm');
            armA.animationCounter = 0;
            player.attack[aNum] = false;
            canSetAttack = true;
        }
        if(aVar*0.75=3)//from last animation step (if condition is met once)
        {   armA.image_angle += 360*image_xscale;
        }
        //swing sword
        //position
        aVar = 4
        yEase10(player.y+0*image_yscale,aVar*0.75);
        xMove10(5*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -5*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-0*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 0*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, 0*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -10*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 20*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -10*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -20*image_xscale, aVar*0.75);
    }
    else
    {
        armA.animationCounter = 63;
        i=armA.animationCounter;
    }
}
//**************************************************
//ATTACKVAR = 3
//**************************************************
else if(attackVar=3)
{
    if(i*0.75>0 and i*0.75<6)
    {
        //prepare swing sword
        //position
        aVar = 4;
        yEase10(player.y+30,aVar*0.75);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-10*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 30*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, -180*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -80*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 0*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 80*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, -10*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 30*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -60*image_xscale, aVar*0.75);
    }
    else if(i*0.75<18)
    {
        //swing sword
        //position
        aVar = 3;
        yEase10(player.y+0*image_yscale,aVar*0.75);
        xMove10(0*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, 20*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-0*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 175*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, -185*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -80*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -30*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -10*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -20*image_xscale, aVar*0.75);
    }
    else if(i*0.75<22)
    {
        //prepare swing sword
        //position
        aVar = 4;
        yEase10(player.y+0,aVar*0.75);
        //head
        head.image_angle = angle_ease(head.image_angle, 0*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,0*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 0*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, -350*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -10*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 30*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -10*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -20*image_xscale, aVar*0.75);
    }
    else
    {
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
    if(i*0.75>0 and i*0.75<14)
    {
        //prepare swing sword
        //position
        aVar = 6;
        yEase10(player.y+70*image_yscale,aVar*0.75);
        xMove10(0*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -40*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,-60*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -10*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, -80*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, -40*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 90*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 0*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -110*image_xscale, aVar*0.75);
    }
    else if(i*0.75<18)
    {
        //swing sword
        //position
        aVar = 3;
        yEase10(player.y+70*image_yscale,aVar*0.75);
        xMove10(-5*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, 10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,20*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 340*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, 320*image_xscale, 2);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, 40*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 90*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 80*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 10*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 10*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -110*image_xscale, aVar*0.75);
    }
    else if(i*0.75<22)
    {
        //swing sword
        //position
        aVar = 3;
        yEase10(player.y+70*image_yscale,aVar*0.75);
        xMove10(-5*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, 10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,20*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 340*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, 320*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, 40*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 90*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 80*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 10*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 10*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -110*image_xscale, aVar*0.75);
    }
    else if(i*0.75<26)
    {
        //prepare swing sword
        //position
        aVar = 3;
        yEase10(player.y+70*image_yscale,aVar*0.75);
        xMove10(0*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, 10*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,20*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 340*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, 320*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, 40*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 90*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 80*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 10*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, 10*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -110*image_xscale, aVar*0.75);
    }
    else if(i*0.75<34)
    {
        //prepare swing sword
        //position
        aVar = 4;
        yEase10(player.y+0,aVar*0.75);
        //head
        head.image_angle = angle_ease(head.image_angle, 0*image_xscale, aVar*0.75);
        //core
        image_angle = angle_ease(image_angle,0*image_xscale, aVar*0.75);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 0*image_xscale, aVar*0.75);
        larmA.image_angle = angle_ease(larmA.image_angle, 10*image_xscale, aVar*0.75);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -10*image_xscale, aVar*0.75);
        larmB.image_angle = angle_ease(larmB.image_angle, 30*image_xscale, aVar*0.75);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 10*image_xscale, aVar*0.75);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 0*image_xscale, aVar*0.75);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -10*image_xscale, aVar*0.75);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -20*image_xscale, aVar*0.75);
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
