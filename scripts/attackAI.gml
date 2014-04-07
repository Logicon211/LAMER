if(!changedDir && !stopped)
{
    if(distance_to_object(currentTarget) < 150)
    {
        controlSet[0] = 1;
        controlSet[1] = 0;
    }
    else
    {
        if(abs(currentTarget.y - y) < 150)
        {
            controlSet[0] = 0;
            controlSet[1] = 1;
        }
        else
        {
            controlSet[0] = 0;
            controlSet[1] = 0;
        }
    }
}
else
{
    controlSet[0] = 0;
    controlSet[1] = 0;
}
