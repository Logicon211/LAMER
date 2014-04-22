if(controlSet[3] == 0)
{
    if(!changedDir && !stopped)
    {
        if(y > currentTarget.y)
        { 
            controlSet[4] = 1;
            controlSet[5] = 0;
            controlSet[8] = 1;
        }
        else if(collision_line(x, y, currentTarget.x, y, land_parent, false, true) != noone)
        {
            controlSet[4] = 1;
            controlSet[5] = 0;
            controlSet[8] = 1;
        }
        else if((y < currentTarget.y) && (collision_line(x, y, x, y + 200, platformParent, false, true) != noone))
        {
            controlSet[4] = 0;
            controlSet[5] = 1;
            controlSet[8] = 1;
        }
        /*else if((playerType > 6) && (abs(currentTarget.x - x) > 300))
        {
            controlSet[4] = 0;
            controlSet[5] = 0;
            controlSet[8] = 1;
        }*/
        else
        {
            controlSet[4] = 0;
            controlSet[5] = 0;
            controlSet[8] = 0;
        }
    }
}
