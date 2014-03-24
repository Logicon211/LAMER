var attacked, mChance, rChance;

attacked = false;

if(distance_to_object(currentTarget) < 200)
{
    mChance = (typeAI - lastAttack) * random(10);
    if(mChance < 300)
    {
        if(leftArmType == 3)
        {
            controlSet[0] = 1;
            attacked = true;
        }
        if(rightArmType == 3)
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
        if(leftArmType == 2)
        {
            controlSet[0] = 1;
            attacked = true;
        }
        if(rightArmType == 2)
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
