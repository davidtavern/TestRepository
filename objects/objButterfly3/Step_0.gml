/*if distance_to_point(room_width, room_height) > 5 && bMove == true
{
	move_towards_point(room_width, room_height, 4);
}
else if distance_to_point(room_width, room_height) < 5
{	
	bMove = false;
	move_towards_point(0, 0, 4);
}
*/

//move_towards_point(instance_nearest(x,y,objFlowerTest),instance_nearest(x,y,objFlowerTest),4);

randomize();

if irandom(9) = 1 motion_set(random_range(45,225), 1 + random(5));

if distance_to_object(objFlowerTest) < 64
{
	move_towards_point(instance_nearest(x,y,objFlowerTest).x,instance_nearest(x,y,objFlowerTest).y, 4);
}
else if distance_to_object(objFlowerTest) < 5
{
	speed = 0;
}