if (abs(x - currentTarget.x) > 500)
{
    controlSet[8] = 1;
}
else
{
    controlSet[8] = 0;
}

if(x < currentTarget.x)
{ 
    controlSet[6] = 0;
    controlSet[7] = 1;
}
else if(x > currentTarget.x)
{
    controlSet[6] = 1;
    controlSet[7] = 0;
}
else
{
    controlSet[6] = 0;
    controlSet[7] = 0;
}
