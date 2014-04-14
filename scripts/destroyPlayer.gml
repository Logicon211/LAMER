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

pIn.x +=1000;
pIn.y +=1000;
with(pIn.lleg1){instance_destroy();}
with(pIn.lleg2){instance_destroy();}
with(pIn.larm[1]){instance_destroy();}
with(pIn.larm[2]){instance_destroy();}
with(pIn.head){instance_destroy();}
with(pIn.leg1){instance_destroy();}
with(pIn.leg2){instance_destroy();}
with(pIn.arm[1]){instance_destroy();}
with(pIn.arm[2]){instance_destroy();}
with(pIn.core){instance_destroy();}
for(i=pIn.boostNums;i>0;i--){
    with(pIn.booster[i]){instance_destroy();}
}
with(pIn){instance_destroy();}
