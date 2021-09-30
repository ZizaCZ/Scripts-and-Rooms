// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Movement(){
y+=vy;
x+=vx;
vy=gr;
//move_wrap(1, 0, 0);
if(st<100)
{
st+=0.3;
}
if(keyboard_check(ord("W"))){
			vy=-7;	
}
if (keyboard_check(ord("S"))) {
vy = +7 ;
}
if(keyboard_check(ord("A"))){
	vx =-7;
}
if(keyboard_check(ord("D"))){
	vx = 7;
}
if (!keyboard_check(ord("D"))) && (!keyboard_check(ord("A"))) ||(keyboard_check(ord("D"))) && (keyboard_check(ord("A"))){
vx=0;	
}
}