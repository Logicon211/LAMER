var attacked, mChance, rChance;

attacked = false;
if(distance_to_object(currentTarget) < 200)
{
    controlSet[0] = 1;
}
else
{
    controlSet[0] = 0;
}
/*
if(distance_to_object(currentTarget) < 200)
{
    show_debug_message('Close enough to melee');
    mChance = (typeAI - lastAttack) * random(10);
    if(mChance < 300)
    {
        show_debug_message('Successful chance to melee');
        if(leftArmType == 3)
        {
            show_debug_message('Should have meleed');
            controlSet[0] = 1;
            attacked = true;
        }
        if(rightArmType == 3)
        {
            show_debug_message('Should have meleed');
            controlSet[1] = 1;
            attacked = true;
        }
    }
}
else if(currentTarget.y < (y + 100) && currentTarget.y > (y - 100))
{
    show_debug_message('Correct height to shoot');
    rChance = (typeAI + lastAttack) * random(10);
    if(rChance > 700)
    {
        show_debug_message('Successful chance to shoot');
        if(leftArmType == 2)
        {
            show_debug_message('Should have shot');
            controlSet[0] = 1;
            attacked = true;
        }
        if(rightArmType == 2)
        {
            show_debug_message('Should have shot');
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
    
}*/
