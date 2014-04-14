/***************************************************
  refreshPlayer
  
  This script recreates a player and deletes the old
  version. Use intended for refreshing the loadout
  after an item is changed in the inventory.
  
  Can also be used in other situation, as type and
  state of player go unchanged. For example, using 
  in battle will cause the player to reset to full
  health and stop moving for one frame, however it
  won't change player number, ai difficulty, etc..
  
  input:    playerIn (pIn)
  type:     object ID
  use:      this 
  
  
 ***************************************************/

pIn = argument0;
pIn.health2 = pIn.healthMax;
pIn.playerType = pIn.playerTypeOrig;

pIn.x +=1000;
pIn.y +=1000;

with(pIn.lleg1){dead=false;}
with(pIn.lleg2){dead=false;}
with(pIn.larm[1]){dead=false;}
with(pIn.larm[2]){dead=false;}
with(pIn.head){dead=false;}
with(pIn.leg1){dead=false;}
with(pIn.leg2){dead=false;}
with(pIn.arm[1]){dead=false;}
with(pIn.arm[2]){dead=false;}
with(pIn.core)
{
    dead=false;
    for(i=0;i<=boostNums;i++)
    {
        booster[i].dead = false;
    }
}


return pIn
