/// @description Insert description here
// You can write your code in this editor

cooldown = cooldown - 1;

with obj_iceball
    if place_meeting(x, y, obj_dragon)
        with other {
			
			visible = false
        }
		
		else{
			visible = true
		}