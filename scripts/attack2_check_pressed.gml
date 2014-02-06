if(keyboard_check_pressed(ord('S')) || keyboard_check_pressed(ord('X')))
{
    return true;
}
else if(gamepad_button_check_pressed(0,gp_face3))
{
    return true;
}
else
{
    return false;
}
