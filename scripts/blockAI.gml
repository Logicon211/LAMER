blockChance = random(1);
closestProj = instance_nearest(x, y, bulletParent);

if(blockChance > 0.75)
{
    if (distance_to_object(closestProj) < 500)
    {
        controlSet[3] = 1;
    }
    else
    {
        controlSet[3] = 0;
    }
}
else
{
    controlSet[3] = 0;
}
