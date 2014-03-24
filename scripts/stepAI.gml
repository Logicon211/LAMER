//Script numbers:
//  1 - Target script
//  2 - Attack script
//  3 - Move script
 
switch (ds_stack_pop(stackAI))
{
    case 1:
        targetAI();
    case 2:
        attackAI();
    case 3:
        moveAI();
        break;
}
