// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SelfDMG(){
	if (place_meeting(x,y,loot3)) && (maxhp <=100) 
	{
	i = maxhp - hp
	if (i > 25)
	{
		i = 25
		hp+=i
		instance_destroy(loot3)
	}
	else
	{
		hp+=i
		instance_destroy(loot3)
	}
	}
	if (object1.dash =false) && (place_meeting(x,y,enemy_)) && (enemy_.dash=true)
		{	//vezme dmg
			if(takedmg = true)
			{
			hp = hp - enemy_.dmg;
			takedmg=false;
			alarm [1]=60;
			}
			//smrt pod 0hp
			if(0>=hp)
			{
		
				room_goto(Room2)
			}
	
		}
if (object1.dash =false) && (place_meeting(x,y,BeholderAmmo))
	{
	if(takedmg = true)
			{
			instance_destroy(BeholderAmmo)
				if object_exists(Beholder)
				{
					hp = hp - Beholder.dmg;
					takedmg=false;
					alarm [1]=60;
				}
			}
			//smrt pod 0hp
			if(0>=hp)
			{
		
				room_goto(Room2)
			}
	}
	if (object1.dash =false) && (place_meeting(x,y,LittleBAmmo))
	{
	if(takedmg = true)
			{
			instance_destroy(LittleBAmmo)
			hp = hp - LittleBeholder.dmg;
			takedmg=false;
			alarm [1]=60;
			}
			//smrt pod 0hp
			if(0>=hp)
			{
		
				room_goto(Room2)
			}
	}
}