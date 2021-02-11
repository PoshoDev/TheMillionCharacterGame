switch (joystick_direction(2)) {
  case 101:
    if (joy_right_2 = true) {          // Joystick release right
      joy_right_2 = false;
      keyboard_key_release(vk_right);
    }
    if (joy_left_2 = true) {          // Joystick release left
      joy_left_2 = false;
      keyboard_key_release(vk_left);
    }
    if (joy_up_2 = true) {          // Joystick release up
      joy_up_2 = false;
      keyboard_key_release(vk_up);
    }
    if (joy_down_2 = true) {          // Joystick release down
      joy_down_2 = false;
      keyboard_key_release(vk_down);
    }

    break;
  case 102:          // Joystick press right
    joy_right_2 = true;
    keyboard_key_press(vk_right);
    break;
  case 100:          // Joystick press left
    joy_left_2 = true;
    keyboard_key_press(vk_left);
    break;
  case 104:          // Joystick press up
    joy_up_2 = true;
    keyboard_key_press(vk_up);
    break;
  case 98:          // Joystick press down
    joy_down_2 = true;
    keyboard_key_press(vk_down);
    break;
}

if joystick_check_button(2,3) then  // Joystick press button 3
  {if joy_button_3_2=0 then
    {joy_button_3_2=1}
        keyboard_key_press(ord("M"))}
else
  {if joy_button_3_2=1 then           // Joystick release button 3
    {joy_button_3_2=0
        keyboard_key_release(ord("M"))}}
if joystick_check_button(2,2) then  // Joystick press button 2
  {if joy_button_2_2=0 then
    {joy_button_2_2=1}
        keyboard_key_press(vk_up)}
else
  {if joy_button_2_2=1 then           // Joystick release button 2
    {joy_button_2_2=0
        keyboard_key_release(vk_up)}}
