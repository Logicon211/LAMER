/***************************************************
  startBattle(plaNumIn,cpuNumIn,roomIn)
  startBattle(roomIn)
  
  You can enter only the room id to transition too (1 argument)
    --OR--
  You can enter number of players and CPUs first (3 arguments)
  
  entering only the room ID will go to that room and 
  create the number of CPUs and Players based on the
  global variables in place.
  
  Script - transitions to loading screen, then to
            roomIn, then creates playNumIn players,
            cpuNumIn of which are AI
  
    
 ***************************************************/

if(argument_count = 1)
{
    numPlayers = numPlayersSetting;
    numCPUs = numCPUsSetting;
    newRoom = argument[0];
}
else
{
    numPlayers = argument[0];
    numCPUs = argument[1];
    newRoom = argument[2];
}

startBattleVar[0] = numPlayers;
startBattleVar[1] = numCPUs;
startBattleVar[2] = newRoom;

room_goto(loadingRoom);
