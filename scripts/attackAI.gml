var attacked, mChance, rChance;

attacked = false;
if(distance_to_object(currentTarget) < 150)
{
    controlSet[0] = 1;
    controlSet[1] = 0;
}
else
{
    controlSet[0] = 0;
    controlSet[1] = 1;
}
