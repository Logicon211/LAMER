if(argument_count=1)
{
    controllerNum = argument[0];
    if(keyboard_check(vk_space))
    {   return true;
    }
    else if(gamepad_button_check(controllerNum,gp_face4))
    {   return true;
    }
}
else
{
    if(keyboard_check(vk_space))
    {   return true;
    }
    else if(gamepad_button_check(0,gp_face4))
    {   return true;
    }
    else if(gamepad_button_check(1,gp_face4))
    {   return true;
    }
    else if(gamepad_button_check(2,gp_face4))
    {   return true;
    }
    else if(gamepad_button_check(3,gp_face4))
    {   return true;
    }
    else
    {   return false;
    }    
}
