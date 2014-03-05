//A button, also confirm button for menus
if(keyboard_check_pressed(ord('A')) or keyboard_check_pressed(ord('Z')) or keyboard_check_pressed(vk_enter))
{
    return true;
}
else if(gamepad_button_check_pressed(0,gp_face1))
{
    return true;
}
else
{
    return false;
}
