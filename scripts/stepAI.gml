changedDir = false;
    if(currentTarget != 0 && currentTarget.playerType == 2)
    {
        resetcontrolAI();
        ds_stack_clear(stackAI);
        targetAI();
    }
    else
    {
        switch(ds_stack_pop(stackAI))
        {
            case 1:
                targetAI();
            case 2:
                attackAI();
            case 3:
                if(playerType > 6)
                {
                    blockAI();
                }
            case 4:
                ymoveAI();
                xmoveAI();
                break;
        }
    }
