if(keyboard_check_released(ord('D')) || keyboard_check_released(ord('C')))
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
