/***************************************************

Each arm is read by the core as 
having a weapon_value

This determines weather arm1 and
arm2 can attack simultaneously,
and if not, which is dominant.

-Swords are dominant over guns.
-Small and medium guns can fire simultaneously.
-Swords are always dominant.

This code must exist, as with customizable
Titans, the weapons on arm1 and arm2
will be different each time and therefore
dominant arms cannot be hard coded.

****************************************************/



/***************************************************

weapon_value...

0 = sword, use while moving, dominance 2
1 = sword, stationary attack, dominance 3
2 = gun, use while moving, use with other attacks, dominance 1
3 = heavy gun, stationary attack, dominance 4

****************************************************/

// Attack Control

attack_one = argument0;
attack_two = argument1;

if(attack_one=true && attack_two=true)
{
    if(attack1_type=0)
    {
        if(attack2_type=0)
        {
            attack2=false;
        }
        if(attack2_type=1)
        {
            attack2=true;
        }
        if(attack2_type=2)
        {
            attack2=false;
        }
        if(attack2_type=3)
        {
            attack2=true;
        }
    }
    if(attack1_type=1)
    {
        if(attack2_type=0)
        {
            attack2=false;
        }
        if(attack2_type=1)
        {
            attack2=false;
        }
        if(attack2_type=2)
        {
            attack2=false;
        }
        if(attack2_type=3)
        {
            attack2=true;
        }
    }
    if(attack1_type=2)
    {
        if(attack2_type=0)
        {
            attack2=true;
        }
        if(attack2_type=1)
        {
            attack2=true;
        }
        if(attack2_type=2)
        {
            attack2=false;
        }
        if(attack2_type=3)
        {
            attack2=true;
        }
    }
    if(attack1_type=3)
    {
        if(attack2_type=0)
        {
            attack2=false;
        }
        if(attack2_type=1)
        {
            attack2=false;
        }
        if(attack2_type=2)
        {
            attack2=false;
        }
        if(attack2_type=3)
        {
            attack2=false;
        }
    }
}

// END Attack Control
