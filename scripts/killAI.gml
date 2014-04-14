var allDead = true;

numPlayers = instance_number(player_o);
for(num = 0; num < numPlayers; num++)
{
    player[num] = instance_find(player_o, num);
}

for(num = 0; num < numPlayers; num++)
{
    if(player[num].playerType == 0)
    {
        allDead = false;
    }
}

if(allDead)
{
    for(num = 0; num < numPlayers; num++)
    {
        player[num].playerType = 0;
    }
}
