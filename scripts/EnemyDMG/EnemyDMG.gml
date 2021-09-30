// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyDMG(){
if (object1.dash =true) && (place_meeting(x,y,object1))
{	//vezme dmg
	if(takedmg = true)
	{
	hp = hp - object1.dmg;
	takedmg=false;
	alarm [0]=30;
	}
}
if (place_meeting(x,y,bullet)){
//vezme dmg
	takedmg = true
	hp = hp - object1.bdmg;
	instance_destroy(bullet)
}
if(instance_exists(enemy_))
{
	//smrt pod 0hp
	if(enemy_.hp<=0) 
	{
		if irandom(20) = 5 
			instance_create_depth(enemy_.x,enemy_.y,0,loot1)
			
		if irandom(5) = 5
			instance_create_depth(enemy_.x,enemy_.y,0,loot3)
			
		if irandom(5) = 3
			instance_create_depth(enemy_.x,enemy_.y,0,loot2)
		
		instance_destroy()
	}
}
if(instance_exists(Beholder))
{
	if (Beholder.hp<=0)
	{
		disx = 0;
		disy = 50;
		i = 0;
		z = 0;
		while(z < 2)
		{
			instance_create_depth(Beholder.x+disx,Beholder.y,0,LittleBeholder)
			disx +=50
			z++
		}
		disx=0;
		while(i < 2){
		instance_create_depth(Beholder.x+disx,Beholder.y+disy,0,LittleBeholder);
		disx += 50
		i++
		}
		instance_destroy()
		
	}
}
 	if(instance_exists(LittleBeholder))
	{
		if(LittleBeholder.hp<=0) 
		{
			if irandom(20) = 5 
				instance_create_depth(LittleBeholder.x,LittleBeholder.y,0,loot1)
			
			if irandom(5) = 5
				instance_create_depth(LittleBeholder.x,LittleBeholder.y,0,loot3)
			
			if irandom(5) = 3
				instance_create_depth(LittleBeholder.x,LittleBeholder.y,0,loot2)
		
			instance_destroy()
		}
	}
	
}