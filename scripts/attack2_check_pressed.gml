controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check_pressed(ord('S')) || keyboard_check_pressed(ord('X')))
{
    return true;
}
else if(gamepad_button_check_pressed(controllerNum,gp_face3))
{
    return true;
}
else
{
    return false;
}
