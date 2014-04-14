var num, numBullets, bullet, currentBullet;

numBullets = instance_number(bulletParent);
for(num = 0; num < numBullets; num++)
{
    bullet[num] = instance_find(bulletParent, num);
}

if(numBullets > 0)
{
    currentBullet = bullet[0];
    for(num = 1; num < numBullets; num++)
    {
        if(bullet[num].origPlayer != id)
        {
            if(bullet[num].y < y + 100 && bullet[num].y > y - 100)
            {
                if(bullet[num].x < x and bullet[num].hspeed > 0)
                {
                    if(abs(bullet[num].x - x) < abs(currentBullet.x - x))
                    {
                        currentBullet = bullet[num];
                    }
                }
                else if(bullet[num].x > x and bullet[num].hspeed < 0)
                {
                    if(abs(bullet[num].x - x) < abs(currentBullet.x - x))
                    {
                        currentBullet = bullet[num];
                    }
                }
            }
        }
    }
    
    if(currentBullet.origPlayer != id)
    {
        if (distance_to_object(currentBullet) < 500)
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
}
else
{
    controlSet[3] = 0;
}
