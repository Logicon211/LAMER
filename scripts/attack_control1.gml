/***************************************************
  Determines Dominant Attacks
  
  input:    aOne
  type:     boolean
  use:      aOne, respresents the "attack1" boolean from
            the playerObject that runs this script.
            attack1 itself represents 
  
  
  Attack Control 1:
    Check Both True
        Both True
            Check Dominant
                if Equal
                    Attacks are simultaneous and mobile
                    State = mobileAttack
                else
                    State = Attack
    
****************************************************/

// Attack Control

aOne = argument0; // player attack1 boolean
aTwo = argument1; // player attack2 boolean
cArm1 = argument2; // core arm1 object ID
cArm2 = argument3; // core arm2 object ID

if(aOne and aTwo)
{ //Both True
    if(cArm1.dominance > cArm2.dominance)
    { //Arm 1 dominant
        state = string('Attack');
        attack1=true;
        attack2 = false;
    }
    else if(cArm1.dominance < cArm2.dominance)
    { //Arm 2 dominant
        state = string('Attack');
        attack1 = false;
        attack2 = true;
    }
    else
    { //Arms equal
        state = string('mobileAttack');
        attack1 = true;
        attack2 = true;
    }
}
else
{ //Both Not True
    if(aOne)
    {
        if(cArm1.isMobile)
        {//Attack1 isMobile
            state = string('mobileAttack');
            attack1 = true;
            attack2 = false;
        }
        else
        {//Attack1 isNotMobile
            state = string('Attack');
            attack1 = true;
            attack2 = false;
        }
    }
    else if(aTwo)
    {
        if(cArm2.isMobile)
        {//Attack2 isMobile
            state = string('mobileAttack');
            attack1 = false;
            attack2 = true;
        }
        else
        {//Attack2 isNotMobile
            state = string('Attack');
            attack1 = false;
            attack2 = true;
        }
    }
}

// END Attack Control
