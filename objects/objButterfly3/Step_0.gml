if distance_to_point(room_width, room_height) > 5 && bMove == true
{
	move_towards_point(room_width, room_height, 4);
}
else if distance_to_point(room_width, room_height) < 5
{	
	bMove = false;
	move_towards_point(0, 0, 4);
}
