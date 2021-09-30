// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Dassh(){
//když se dash = false a klikl jsi levým tak dashnes
if (!dash and mouse_check_button_pressed(mb_left)) && (st>=25)
{
st-=25
direction = point_direction(x,y,mouse_x, mouse_y)
speed=16 ;
dash= true;
//změna spritu
sprite_index = Dash
 image_angle =point_direction(x,y,mouse_x,mouse_y)+180
 //nastavení dashe zpět na false
 alarm [0]= 20 ;
}

}