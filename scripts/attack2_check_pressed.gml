controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check_pressed(ord('S')) || keyboard_check_pressed(ord('X')) || keyboard_check_pressed(ord('B')))
{
    if(controllerNum == 0)
    {
        return true;
    }
}
else if(gamepad_button_check_pressed(controllerNum,gp_face2) or gamepad_button_check(controllerNum,gp_shoulderr))
{
    return true;
}
else
{
    return false;
}
