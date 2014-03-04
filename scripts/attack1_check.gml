if(keyboard_check(ord('A')) or keyboard_check(ord('Z')) or keyboard_check_pressed(vk_enter))
{
    return true;
}
else if(gamepad_button_check(0,gp_face1))
{
    return true;
}
else
{
    return false;
}
