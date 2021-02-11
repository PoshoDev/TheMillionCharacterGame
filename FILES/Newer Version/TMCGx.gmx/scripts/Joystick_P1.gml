switch (joystick_direction(1)) {
  case 101:
    if (joy_right_1 = true) {          // Joystick release right
      joy_right_1 = false;
      keyboard_key_release(ord("D"));
    }
    if (joy_left_1 = true) {          // Joystick release left
      joy_left_1 = false;
      keyboard_key_release(ord("A"));
    }
    if (joy_up_1 = true) {          // Joystick release up
      joy_up_1 = false;
      keyboard_key_release(ord("W"));
    }
    if (joy_down_1 = true) {          // Joystick release down
      joy_down_1 = false;
      keyboard_key_release(ord("S"));
    }

    break;
  case 102:          // Joystick press right
    joy_right_1 = true;
    keyboard_key_press(ord("D"));
    break;
  case 100:          // Joystick press left
    joy_left_1 = true;
    keyboard_key_press(ord("A"));
    break;
  case 104:          // Joystick press up
    joy_up_1 = true;
    keyboard_key_press(ord("W"));
    break;
  case 98:          // Joystick press down
    joy_down_1 = true;
    keyboard_key_press(ord("S"));
    break;
}

if joystick_check_button(1,3) then  // Joystick press button 3
  {if joy_button_3_1=0 then
    {joy_button_3_1=1}
        keyboard_key_press(ord("G"))}
else
  {if joy_button_3_1=1 then           // Joystick release button 3
    {joy_button_3_1=0
        keyboard_key_release(ord("G"))}}
if joystick_check_button(1,2) then  // Joystick press button 2
  {if joy_button_2_1=0 then
    {joy_button_2_1=1}
        keyboard_key_press(ord("W"))}
else
  {if joy_button_2_1=1 then           // Joystick release button 2
    {joy_button_2_1=0
        keyboard_key_release(ord("W"))}}
