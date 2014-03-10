controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check(ord('S')) || keyboard_check(ord('X')))
{
    return true;
}
else if(gamepad_button_check(controllerNum,gp_face4))
{
    return true;
}
else
{
    return false;
}
