controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check(vk_space))
{   return true;
}
else if(gamepad_button_check(controllerNum,gp_face1))
{   return true;
}
else
{   return false;
}
