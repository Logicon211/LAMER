controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check_pressed(vk_right))
{
    if(controllerNum == 0)
    {
        return true;
    }
}
else if(gamepad_axis_value(controllerNum,gp_axislh)>0.4 or gamepad_button_check_pressed(controllerNum,gp_padr))
{
    if(controllerDirection[controllerNum,0] < 0.3 or gamepad_button_check_pressed(controllerNum,gp_padr))
    {
        return true;
    }
}
else
{
    return false;
}
