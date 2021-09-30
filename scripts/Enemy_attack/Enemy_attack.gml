// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_shoot(){
instance_create_depth(x,y,0,BeholderAmmo)
}
function Little_Shoot(){
instance_create_depth(x,y,0,LittleBAmmo)
}
function Enemy_Dash(){
if (!enemy_.dash)
{
		var dir = point_direction(x,y,object1.x,object1.y)
		vx=lengthdir_x(speed_,dir)
		vy=lengthdir_y(speed_,dir)

direction = point_direction(x,y,object1.x,object1.y)
speed=10;
dash= true;
//změna spritu
sprite_index = Lava_demon;
 image_angle =point_direction(x,y,object1.x,object1.y)+180
 //nastavení dashe zpět na false
 alarm [1]= 20 ;
}
}