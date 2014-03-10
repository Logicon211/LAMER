controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check(vk_lshift)||keyboard_check(ord('F')))
{
    if(controllerNum == 0)
    {
        return true;
    }
}
else if(gamepad_button_check(controllerNum,gp_shoulderl))
{
    return true;
}
else
{
    return false;
}
