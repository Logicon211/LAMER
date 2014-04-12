var num, numBullets, bullet, currentBullet;

numBullets = instance_number(bulletParent);
for(num = 0; num < numBullets; num++)
{
    player[num] = instance_find(bulletParent, num);
}

currentBullet = bullet[0];
for(num = 0; num < numBullets; num++)
{
    if(bullet[num].origPlayer != id)
    {
        if(bullet[num].y < y + 100 && bullet[num].y > y - 100)
        {
            if(bullet[num].x < x and bullet[num].hspeed > 0)
            {
                if(abs(bullet[num].x - x) < abs(currentBullet[num].x - x))
                {
                    currentBullet = bullet[num];
                }
            }
            else if(bullet[num].x > x and bullet[num].hspeed < 0)
            {
                if(abs(bullet[num].x - x) < abs(currentBullet[num].x - x))
                {
                    currentBullet = bullet[num];
                }
            }
        }
    }
}

if(choose(false, true, true, true))
{
    if (distance_to_object(closestProj) < 500)
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
