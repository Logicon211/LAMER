leftArmType = 0;
rightArmType = 0;

stackAI = ds_stack_create();
ds_stack_push(stackAI, 1);

typeAI = floor(random(100)) + 1;

currentTarget = 0;
lastAttack = 0;

switch(playerNum)
{
    case 2:
        leftArmType = playerLoadOut2[2];
        rightArmType = playerLoadOut2[3];
    case 3:
        leftArmType = playerLoadOut3[2];
        rightArmType = playerLoadOut3[3];
    case 4:
        leftArmType = playerLoadOut4[2];
        rightArmType = playerLoadOut4[3];
}
