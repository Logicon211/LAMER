var attacked, mChance, rChance;
var leftArm, rightArm;
 
switch(playerNum)
{
    case 2:
        leftArm = playerLoadOut2[2];
        rightArm = playerLoadOut2[3];
    case 3:
        leftArm = playerLoadOut3[2];
        rightArm = playerLoadOut3[3];
    case 4:
        leftArm = playerLoadOut4[2];
        rightArm = playerLoadOut4[3];
}

attacked = false;

if(distance_to_object(currentTarget) < 200)
{
    mChance = (typeAI - lastAttack) * random(10);
    if(mChance < 300)
    {
        if(leftArm.type == 3)
        {
            controlSet[0] = 1;
            attacked = true;
        }
        if(rightArm.type == 3)
        {
            controlSet[1] = 1;
            attacked = true;
        }
    }
}
else if(currentTarget.y < (y + 100) && currentTarget.y > (y - 100))
{
    rChance = (typeAI + lastAttack) * random(10);
    if(rChance > 700)
    {
        if(leftArm.type == 2)
        {
            controlSet[0] = 1;
            attacked = true;
        }
        if(rightArm.type == 2)
        {
            controlSet[1] = 1;
            attacked = true;
        }
    }
}

if (attacked)
{
    lastAttack = 0;
}
else
{
    lastAttack++;
    controlSet[0] = 0;
    controlSet[1] = 0;
}
