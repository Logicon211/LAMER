if(keyboard_check_released(ord('D')) or keyboard_check_released(ord('C')) or keyboard_check(ord('B')))
{
    return true;
}
else if(gamepad_button_check_released(0,gp_face2))
{
    return true;
}
else
{
    return false;
}
