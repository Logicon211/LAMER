/***************************************************
  Collision code run by all player objects
  
  DO NOT TAMPER
 ***************************************************/

/***************************************************
  Check Below
 ***************************************************/

if(vspeed > 0)
{
    if(instance_place(x,y+1+vspeed,land_parent))
    {
        while(instance_place(x,y+vspeed,land_parent))
        {
            vspeed -= 1;
        }
        y += vspeed;
        vspeed = 0;
        airborne = false;
    }
    else
    {
        airborne = true;
    }
}

/***************************************************
  END Check Below

  Check Up
 ***************************************************/

if(vspeed < 0)
{
    if(instance_place(x,y-1+vspeed,land_parent))
    {
        while(instance_place(x,y+vspeed,land_parent))
        {
            vspeed += 1;
        }
        y += vspeed;
        vspeed = 0;
    }
}

/***************************************************
  END Check Up
  
  Check Left/Right
 ***************************************************/

if(hspeed>0)//moving right
{
    if(instance_place(x+hspeed,y-10,land_parent))
    {
        for(i=hspeed-1;i>0;i--)
        {
            if(!instance_place(x+i,y,land_parent))
            {   x+=i;
                i=0;
            }
        }
        hspeed = 0;
        target_hspeed = 0;
    }
}
else if(hspeed<0)//moving left
{
    if(instance_place(x+hspeed,y-10,land_parent))
    {
        for(i=hspeed-1;i<0;i++)
        {
            if(!instance_place(x+i,y,land_parent))
            {   x+=i;
                i=0;
            }
        }
        hspeed = 0;
        target_hspeed = 0;
    }
}

/***************************************************
  END Check Left/Right
 ***************************************************/
 
/***************************************************
  Check Platform
  
  if not moving up
    if place+vspeed collides with platform
        if place - 20 does not collide with platform
            Stay atop platform
                if down and jump pressed
                    move down 20 past platform and fall
 ***************************************************/
if(sprite_index=player_s)
{
    if(vspeed >= 0)
    {   if(instance_place(x,y+vspeed,platformParent))
        {   
            pForm = instance_place(x,y+vspeed,platformParent);
            //pForm references the plaform to be landed on (or passed over)
            if(!instance_place(x,y-20,pForm))
            {    while(instance_place(x,y+vspeed,pForm))
                {
                    vspeed -= 1;
                }
                y += vspeed;
                vspeed = 0;
                airborne = false;
                if(down_check(playerNum))
                {/*   if(jump_check(playerNum))
                    {   */airborne = true;
                        y+=20+pForm.sprite_height;
                    //}
                }
            }
            else
            {   airborne = true;
            }
        }
    }
}

/***************************************************
  END Check Platform
 ***************************************************/
