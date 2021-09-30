// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shoot(){
if (!dash and mouse_check_button_pressed(mb_right)) && (Ammo!=0)
{
Ammo--
instance_create_depth(x,y,0,bullet)
}
}