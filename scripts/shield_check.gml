controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check(ord('D')) or keyboard_check(ord('C')) or keyboard_check(ord('B')))
{
    if(controllerNum == 0)
    {
        return true;
    }
}
else if(gamepad_button_check(controllerNum,gp_shoulderrb) or gamepad_button_check(controllerNum,gp_shoulderlb))
{
    return true;
}
else
{
    return false;
}
