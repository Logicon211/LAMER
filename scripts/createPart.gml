/***************************************************
  createPart(playerNum,part)
  
  input:    playerNum
    type:   int
    use:    player's number identifier user 
            to choose loadout
            
  input:    partType
    type:   int
    use:    range from 0-4
            0 = create Head
            1 = create Torso
            2 = create Left Arm
            3 = create Right Arm
            4 = create Legs
              
 ***************************************************/
 
playerNum = argument0;
partType = argument1;

if(playerNum=0)
{
    newPart = instance_create(x,y,playerLoadOut1[partType].part);
}
else if(playerNum=1)
{
    newPart = instance_create(x,y,playerLoadOut2[partType].part);
}
else if(playerNum=2)
{
    newPart = instance_create(x,y,playerLoadOut3[partType].part);
}
else if(playerNum=3)
{
    newPart = instance_create(x,y,playerLoadOut4[partType].part);
}

return newPart;
