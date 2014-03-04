if(keyboard_check_pressed(ord('A')) || keyboard_check_pressed(ord('Z')))
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
