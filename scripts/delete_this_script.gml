if(bullet[num].x < x and bullet[num].hspeed > 0)
{
    if(abs(bullet[num].x - x) < abs(currentBullet[num].x - x))
    {
        closest = bullet[num];
    }
}
else if(bullet[num].x > x and bullet[num].hspeed < 0)
{
    if(abs(bullet[num].x - x) < abs(currentBullet[num].x - x))
    {
        closest = bullet[num];
    }
}
