controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check(ord('S')) || keyboard_check(ord('X')))
{
    if(controllerNum == 0)
    {
        return true;
    }
}
else if(gamepad_button_check(controllerNum,gp_face2) or gamepad_button_check(controllerNum,gp_shoulderr))
{
    return true;
}
else
{
    return false;
}
