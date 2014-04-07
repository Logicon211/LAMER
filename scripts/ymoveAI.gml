if(controlSet[3] == 0)
{
    if(!changedDir && !stopped)
    {
        if(y > currentTarget.y)
        { 
            controlSet[4] = 1;
            controlSet[8] = 1;
        }
        /*else if(y > currentTarget.y)
        {
            controlSet[] = ;
            controlSet[] = ;
        }*/
        else
        {
            controlSet[4] = 0;
            controlSet[8] = 0;
        }
    }
}
