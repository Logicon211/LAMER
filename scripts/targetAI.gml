var numPlayers, player, num;
 
numPlayers = instance_number(player_o);
for(num = 0; num < numPlayers; num++)
{
    player[num] = instance_find(player_o, num);
}

for(num = 0; num < numPlayers; num++)
{
    if((player[num] != id) && (player[num].playerType == 0))
    {
        if(distance_to_object(player[num]) < distance_to_object(currentTarget))
        {
            currentTarget = player[num];
        }
    }
}

for(num = 1; num <= 20; num++)
{
    if(num == 20)
    {
        ds_stack_push(stackAI, 1);
    }
    else if(num % 3 == 0)
    {
        ds_stack_push(stackAI, 3);
    }
    else if(num % 2 == 0)
    {
        ds_stack_push(stackAI, 2);
    }
    else
    {
        ds_stack_push(stackAI, 4);
    }
}
