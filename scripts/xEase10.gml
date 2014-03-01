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
x=x_ease(x,desPos,calVar);
//head
with(head){
    x=x_ease(x,desPos,calVar);
}
//arm
with(armA){
    x=x_ease(x,desPos,calVar);
}
//lower arm
with(larmA){
    x=x_ease(x,desPos,calVar);
}
//arm2
with(armB){
    x=x_ease(x,desPos,calVar);
}
//lower arm2
with(larmB){
    x=x_ease(x,desPos,calVar);
}    
//leg1
with(leg1){
    x=x_ease(x,desPos,calVar);
}    
//lower leg1
with(lleg1){
    x=x_ease(x,desPos,calVar);
}   
//leg2
with(leg2){
    x=x_ease(x,desPos,calVar);
}    
//lower leg2
with(lleg2){
    x=x_ease(x,desPos,calVar);
}
