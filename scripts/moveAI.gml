if(typeAI < 50)
{
    if(x < currentTarget.x)
    {
        controlSet[6] = 1;
        controlSet[7] = 0;
    }
    else if(x > currentTarget.x)
    {
        controlSet[6] = 0;
        controlSet[7] = 1;
    }
}
else if(typeAI < 100)
{
    if(x > currentTarget.x && x > 100)
    {
        controlSet[6] = 1;
        controlSet[7] = 0;
    }
    else if(x < currentTarget.x && x < (room_width - 100))
    {
        controlSet[6] = 0;
        controlSet[7] = 1;
    }
}

if(y + 100 < currentTarget.y)
{
    controlSet[2] = 1;
}
else if(y - 100 > currentTarget.y)
{
    controlSet[5] = 1;
    controlSet[2] = 1;
}
else
{
    controlSet[2] = 0;
    controlSet[5] = 0;
}
