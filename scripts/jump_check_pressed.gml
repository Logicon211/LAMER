controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check_pressed(vk_space))
{
    if(controllerNum == 0)
    {
        return true;
    }
}
else if(gamepad_button_check_pressed(controllerNum,gp_face1))
{
    return true;
}
else
{
    return false;
}
