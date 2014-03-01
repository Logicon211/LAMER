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
        if(boost_check)
        {
            attackVar = 2;
        }
    }
    canSetAttack = false;
}

//ATTACKVAR = 0
//**************************************************
if(attackVar = 0)
{
    if(i>0 and i<10)
    {
        //pullback sword
        //position
        sVar = 3;
        yEase10(player.y+20,sVar);
        xMove10(-2*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-30*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, -40*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, -90*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -90*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 40*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 40*image_xscale, 10);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -20*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -50*image_xscale, 6);
    }
    else if(i<16)
    {
        //swing sword
        //position
        sVar = 3;
        yEase10(player.y+0*image_yscale,sVar);
        xMove10(25*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -15*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-10*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 90*image_xscale, 3);
        larmA.image_angle = angle_ease(larmA.image_angle, 150*image_xscale, 3);
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
        //swing sword
        //position
        sVar = 10;
        yEase10(player.y+10*image_yscale,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,0*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 90*image_xscale, 3);
        larmA.image_angle = angle_ease(larmA.image_angle, 150*image_xscale, 3);
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
    else if(i<30)//step discontinued
    {
        //swing sword
        //position
        sVar = 3;
        yEase10(player.y+0*image_yscale,sVar);
        xMove10(5*image_xscale);
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
        leg2.image_angle = angle_ease(leg2.image_angle, -5*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -15*image_xscale, sVar);
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
//ATTACKVAR = 1
//**************************************************
else//if(attackVar=1){}
{
    if(i>0 and i<10)
    {
        //raise sword
        //position
        sVar = 3;
        yEase10(player.y+0,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, 30*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,20*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 160*image_xscale, sVar);
        larmA.image_angle = angle_ease(larmA.image_angle, 200*image_xscale, sVar);
        //armB
        armB.image_angle = angle_ease(armB.image_angle, -130*image_xscale, sVar);
        larmB.image_angle = angle_ease(larmB.image_angle, -10*image_xscale, sVar);
        //leg1
        leg1.image_angle = angle_ease(leg1.image_angle, 140*image_xscale, sVar);
        lleg1.image_angle = angle_ease(lleg1.image_angle, 10*image_xscale, sVar);
        //leg2
        leg2.image_angle = angle_ease(leg2.image_angle, -20*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -40*image_xscale, sVar);
    }
    else if(i<16)
    {
        //swing sword
        //position
        sVar = 3
        yEase10(player.y+70*image_yscale,sVar);
        xMove10(15*image_xscale);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 20*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, 80*image_xscale, 2);
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
        //swing sword
        //position
        sVar = 3
        yEase10(player.y+70*image_yscale,sVar);
        //head
        head.image_angle = angle_ease(head.image_angle, -10*image_xscale, sVar);
        //core
        image_angle = angle_ease(image_angle,-50*image_xscale, sVar);
        //armA
        armA.image_angle = angle_ease(armA.image_angle, 20*image_xscale, 2);
        larmA.image_angle = angle_ease(larmA.image_angle, 80*image_xscale, 2);
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
    else if(i<30)//step discontinued
    {
        //swing sword
        //position
        sVar = 3;
        yEase10(player.y+0*image_yscale,sVar);
        xMove10(5*image_xscale);
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
        leg2.image_angle = angle_ease(leg2.image_angle, -5*image_xscale, sVar);
        lleg2.image_angle = angle_ease(lleg2.image_angle, -15*image_xscale, sVar);
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
