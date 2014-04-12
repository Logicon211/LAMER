/***************************************************
  This script is used to create user and AI players.
  
  Input:    playerNumCreate
    Type:   int
    Use:    range from 0-3 for players 1-4
                indexed from 0 due to it's use in
                colorizing the player indicator
                
  Input:    playerType
    Type:   int
    Use:    range from 0-3
                0 - player mode
                1 - display mode
                2 - dead mode (explodes upon creation)
                3 - AI mode Base Model
                4 - AI decision every 60 steps
                5 - AI decision every 30 steps
                6 - AI decision every 15 steps
                
                8 - AI decision every 45 steps
                9 - AI decision every 30 steps
                10 - AI decision every 15 steps
                11 - AI decision every 1 steps
                
  Input:    objPos[]
    Type:   int[]
    Use:    indexes 0 and 1 of the int array represent
                x and y positions respectively.
  ...
  
 ***************************************************/

playerNumCreate = argument0;
playerType = argument1;
objPos[0] = argument2;
objPos[1] = argument3;

if(playerType<3) //make player
{
    newPlayer = instance_create(objPos[0],objPos[1],player_o);
    newPlayer.playerNum = playerNumCreate;
    newPlayer.playerType = playerType;
    return newPlayer;
}
else //make AI player
{
    newPlayer = instance_create(objPos[0],objPos[1],player_o);
    newPlayer.playerNum = playerNumCreate;
    newPlayer.playerType = playerType;
    return newPlayer;    
}

