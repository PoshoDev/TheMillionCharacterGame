//Alright tard, this is how it works
//This creates a new blank sprite
//>"string(global.actual_spr)" = sprite_add("template.png", 2, false, true, 0, 0);
//>sprite_index = ("spr_"+string(global.actual_spr))

//Then it is replaced by the Current Variable
//>sprite_replace(("spr_"+string(global.actual_spr)),(string(global.actual_spr)+".png"),2,true,true,0,0)

//sprite_create_from_surface("spr_"+string(global.actual_spr),1,1,1,1,1,1,1,1)
//sprite_replace("spr_"+string(global.actual_spr),string(global.actual_spr)+".png",2,true,true,0,0)
//sprite_index = "spr_"+string(global.actual_spr)
