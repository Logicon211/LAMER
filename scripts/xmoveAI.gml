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
