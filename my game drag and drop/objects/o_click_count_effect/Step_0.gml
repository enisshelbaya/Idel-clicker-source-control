/// @description Insert description here
// You can write your code in this editor

alpha -= decay;
y -= 1;

if (alpha <= 0 || y <= -10)
{
	instance_destroy();	
}
