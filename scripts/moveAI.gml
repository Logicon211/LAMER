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

if(y < currentTarget.y)
{
    controlSet[8] = 1;
    controlSet[5] = 0;    
}
/*else if(y > currentTarget.y)
{
    controlSet[8] = 0;
    controlSet[5] = 1;
}*/
else
{
    controlSet[8] = 0;
    controlSet[5] = 0;
}
