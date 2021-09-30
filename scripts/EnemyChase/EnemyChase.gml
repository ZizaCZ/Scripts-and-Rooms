// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyChase(){
switch (state)
{
	//pronásledování hráče v určitém range distance
	case e_state.chase:
	{
		var dir = point_direction(x,y,object1.x,object1.y)
		vx=lengthdir_x(speed_,dir)
		vy=lengthdir_y(speed_,dir)
		if(instance_exists(Beholder))
		{
			if(distance_to_object(object1)<260){Beholder.state =e_state.shooting;}
		}
		if(instance_exists(LittleBeholder))
		{
			if(distance_to_object(object1)<260){LittleBeholder.state =e_state.shooting;}
		}
			
		if(instance_exists(enemy_)){
			if(distance_to_object(object1)<200){enemy_.state =e_state.dash;}
		}
		
	}
	break;

	case e_state.dash:
	{
		if (timer =0) 
		{
			enemy_.script_execute(Enemy_Dash)
		}
		timer++;
		if (timer >=60)
		{
		timer=0;	
		}
		if (distance_to_object(object1)>360){ state = e_state.chase;}
	}
	break;
	
	case e_state.shooting:
	{
		if (timer =0) 
		{
			if(instance_exists(Beholder)){Beholder.script_execute(Enemy_shoot)}
			if(instance_exists(LittleBeholder)){LittleBeholder.script_execute(Little_Shoot)}
		}
		timer++;
		if (timer >=30)
		{
		timer=0;	
		}
		if (distance_to_object(object1)>260){ state = e_state.chase;}
	}
	break;
}}