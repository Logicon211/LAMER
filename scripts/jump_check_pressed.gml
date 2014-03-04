if(keyboard_check_pressed(vk_space))
{
    return true;
}
else if(gamepad_button_check_pressed(0,gp_face4))
{
    return true;
}
else
{
    return false;
}
