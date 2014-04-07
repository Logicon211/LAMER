statusAI();

switch (ds_stack_pop(stackAI))
{
    case 1:
        targetAI();
    case 2:
        attackAI();
    case 3:
        //blockAI();
    case 4:
        ymoveAI();
        xmoveAI();
        break;
}
