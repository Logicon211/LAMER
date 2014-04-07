if(controlSet[3] == 0)
{
    if(x < currentTarget.x)
    { 
        if(controlSet[6] == 1)
        {
            changedDir = true;
        }
        controlSet[6] = 0;
        controlSet[7] = 1;
        stopped = false;
    }
    else if(x > currentTarget.x)
    {
        if(controlSet[7] == 1)
        {
            changedDir = true;
        }
        controlSet[6] = 1;
        controlSet[7] = 0;
        stopped = false;
    }
    else
    {
        controlSet[6] = 0;
        controlSet[7] = 0;
        stopped = true;
    }
}
else
{
    controlSet[6] = 0;
    controlSet[7] = 0;
    stopped = true;
}
