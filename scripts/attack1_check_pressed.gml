//A button, also confirm button for menus
controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check_pressed(ord('A')) or keyboard_check_pressed(ord('Z')) or keyboard_check_pressed(vk_enter))
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
