var numPlayers, player, rank, smallestDis, largestRank, num;
 
numPlayers = instance_number(player_o);

for(num = 0; num < numPlayers; num++)
{
    player[num] = instance_find(player_o, num);
    rank[num] = 0;
}

for(num = 0; num < numPlayers; num++)
{
    if(player[num] != id)
    {
        if(player[num].playerType == 0)
        {
            rank[num] += 5;
        }
    }
}

for(num = 0; num < numPlayers; num++)
{
    if(player[num] != id)
    {
        switch(floor((player[num].health2 / player[num].healthMax) * 10))
        {
            case 0:
                rank[num] += 1;
                break;
            case 1:
                rank[num] += 2;
                break;
            case 2:
                 rank[num] += 3;
                 break;
            case 3:
                rank[num] += 4;
                break;
            case 4:
                rank[num] += 5;
                break;
            case 5:
                rank[num] += 6;
                break;
            case 6:
                rank[num] += 7;
                break;
            case 7:
                rank[num] += 8;
                break;
            case 8:
                rank[num] += 9;
                break;
            case 9:
                rank[num] += 10;
                break;
        }
    }
}

for(num = 0; num < numPlayers; num++)
{
    if(player[num] != id)
    {
        smallestDis = 0;
        if(distance_to_object(player[num]) < distance_to_object(player[smallestDis]))
        {
            smallestDis = num;
        }
    }
}
rank[smallestDis] += 20;

for(num = 0; num < numPlayers; num++)
{
    if(player[num] != id)
    {
        rank[num] += (floor(random(2)) * -1) * random(15);
    }
}

for(num = 1; num < numPlayers; num++)
{
    if(player[num] != id)
    {
        largestRank = 0;
        if(rank[largestRank] < rank[num])
        {
            largestRank = num;
        }
    }
}

currentTarget = player[largestRank];

for(num = 1; num <= 20; num++)
{
    if(num == 20)
    {
        ds_stack_push(stackAI, 1);
    }
    else if(num % 2 == 0)
    {
        ds_stack_push(stackAI, 2);
    }
    else
    {
        ds_stack_push(stackAI, 3);
    }
}
