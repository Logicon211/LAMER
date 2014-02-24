/***************************************************
  Attack Control Script 1
  Runs from the the playerObject  
  
  syntax:
  attackControl1(aOne, aTwo, cArm1, cArm2)
  
  intended input:
  attackControl1(attack1, attack2, core.arm1, core.arm2)

****************************************************
  
  input:    aOne
  type:     boolean
  use:      aOne respresents the "attack1" boolean from
            the playerObject.
            
  input:    aTwo
  type:     boolean
  use:      aTwo respresents the "attack2" boolean from
            the playerObject.
            
  input:    cArm1
  type:     object ID
  use:      cArm is intended to be core.Arm1, as input
            by the playerObject.
            
  input:    cArm2
  type:     object ID
  use:      cArm is intended to be core.Arm2, as input
            by the playerObject.
  
****************************************************
              
  Attack Control 1:
    if both attacks true
        check dominance of attacks
            if attack1 dominant
                attack2 false, state is Attack
            if attack2 dominant
                attack1 false, state is Attack
            if equal dominance
                state is mobileAttack
    if not both attacks true
        if attack1 true
            if attack1 is mobile
                state is mobileAttack
            else
                state is Attack
        if attack2 true
            if attack2 is mobile
                state is mobileAttack
            else
                state is Attack
        if both false
            do nothing
    
****************************************************/

// Attack Control

aOne = argument0; // player attack1 boolean
aTwo = argument1; // player attack2 boolean
cArm1 = argument2; // core arm1 object ID
cArm2 = argument3; // core arm2 object ID
var ret; //array of integers to be returned

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
        if(cArm1.dominance=0)
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
        if(cArm2.dominance=0)
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
