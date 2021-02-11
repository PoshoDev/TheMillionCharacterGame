switch (joystick_direction(1)) {
  case 101:
    if (joy_right = true) {          // Joystick release right
      joy_right = false;
      keyboard_key_release(vk_right);
    }
    if (joy_left = true) {          // Joystick release left
      joy_left = false;
      keyboard_key_release(vk_left);
    }
    if (joy_up = true) {          // Joystick release up
      joy_up = false;
      keyboard_key_release(vk_up);
    }
    if (joy_down = true) {          // Joystick release down
      joy_down = false;
      keyboard_key_release(vk_down);
    }

    break;
  case 102:          // Joystick press right
    joy_right = true;
    keyboard_key_press(vk_right);
    break;
  case 100:          // Joystick press left
    joy_left = true;
    keyboard_key_press(vk_left);
    break;
  case 104:          // Joystick press up
    joy_up = true;
    keyboard_key_press(vk_up);
    break;
  case 98:          // Joystick press down
    joy_down = true;
    keyboard_key_press(vk_down);
    break;
}

if joystick_check_button(1,3) then  // Joystick press button 3
  {if joy_button_3=0 then
    {joy_button_3=1}
        keyboard_key_press(ord("X"))}
else
  {if joy_button_3=1 then           // Joystick release button 3
    {joy_button_3=0
        keyboard_key_release(ord("X"))}}
if joystick_check_button(1,2) then  // Joystick press button 2
  {if joy_button_2=0 then
    {joy_button_2=1}
        keyboard_key_press(ord("Z"))}
else
  {if joy_button_2=1 then           // Joystick release button 2
    {joy_button_2=0
        keyboard_key_release(ord("Z"))}}
