/*
    armA
    armB
    larmA
    larmB
    leg1
    leg2
    lleg1
    lleg2
    head
    core (self)
*/
desPos = argument0; //destination position
calVar = argument1; //calculation variable 
                    //  (speed of movement, smaller is faster)

//core
y=y_ease(y,desPos,calVar);
//head
head.y=y_ease(head.y,desPos,calVar);
//arm
armA.y=y_ease(armA.y,desPos,calVar);
//lower arm
larmA.y=y_ease(larmA.y,desPos,calVar);
//arm2
armB.y=y_ease(armB.y,desPos,calVar);
//lower arm2
larmB.y=y_ease(larmB.y,desPos,calVar);
//leg1
leg1.y=y_ease(leg1.y,desPos,calVar);
//lower leg1
lleg1.y=y_ease(lleg1.y,desPos,calVar);
//leg2
leg2.y=y_ease(leg2.y,desPos,calVar);
//lower leg2
lleg2.y=y_ease(lleg2.y,desPos,calVar);
