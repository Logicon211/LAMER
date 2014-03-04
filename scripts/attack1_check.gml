if(keyboard_check(ord('A')) || keyboard_check(ord('Z')))
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
