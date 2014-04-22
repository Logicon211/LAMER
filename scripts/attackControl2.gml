/***************************************************
 ***************************************************/

armA = argument0;
aNum = argument1;
armB = argument2;
bNum = argument3;
spd = argument4;

if(armA.number=10)
{
    attackSet10(armA,aNum,armB,bNum,spd)
}

if(armA.number=0)
{
    positionPlayer()
    attackSet0(armA,aNum)
}

if(armA.number=1)
{
    positionPlayer()
    cannonScript(armA,aNum)
}

if(armA.number=2)
{
    positionPlayer()
    lightGun2script(armA,aNum)
}

if(armA.number=3)
{
    positionPlayer()
    heavyGun2script(armA,aNum)
}

if(armA.number=4)
{
    positionPlayer()
    heavyGun3Script(armA,aNum)
}
if(armA.number=5)
{
    positionPlayer()
    lightGun1Script(armA,aNum)
}
