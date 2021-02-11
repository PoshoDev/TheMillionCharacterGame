if global.P1dir = "leftMOV"
    if image_xscale < 1
        image_xscale += 0.5
    else
        image_xscale = 1
if global.P1dir = "rightMOV"
    if image_xscale > -1
        image_xscale -= 0.5
    else
        image_xscale = -1
if (global.P1dir = "left")
    {
{image_index = 0} { image_xscale = 1; }
    }
if (global.P1dir = "right")
    {
{image_index = 0} { image_xscale = -1; }
    }
    
//Splats it down when "Down" is pressed
if keyboard_check(vk_down)
    if image_yscale > 0.5
        {
        PlayerS.goingdown = 1
        image_yscale -= 0.05
        PlayerS.image_yscale -=0.05
        }
    
if keyboard_check_released(vk_down)
    {
    image_yscale = 1
    PlayerS.goingdown = 0
    PlayerS.image_yscale = 1
    PlayerS.y -= 6
    }
    
//Draws the jump
if PlayerS.imup = 1
    {
    if global.P1dir = "right"
        image_angle = 20
    if global.P1dir = "rightMOV"
        image_angle = 20
    if global.P1dir = "left"
        image_angle = -20
    if global.P1dir = "leftMOV"
        image_angle = -20
    }
else
    image_angle = 0
