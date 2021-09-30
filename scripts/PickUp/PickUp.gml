// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PickUp(){
	if(place_meeting(x,y,loot2))
	{
		i = irandom(10)
		Ammo+= i;
		instance_destroy(loot2)
	}
}