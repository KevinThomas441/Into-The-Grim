


if (ice_hit == false){

	oppositeDirection = other.direction
	
	oppositeAngle = other.image_angle

	other.direction = oppositeDirection + 180
	
	other.image_angle = oppositeAngle + 180
	
	other.speed += 1
	
	ice_hit = true
	
	alarm[2] = 15
}