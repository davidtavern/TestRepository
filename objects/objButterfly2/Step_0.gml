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

randomize();

iCountdownTimer -= 1;

//draw_text(256,256,string(iCountdownTimer));

show_debug_message(iCountdownTimer);

draw_text_color(128,128,string(iCountdownTimer),c_green,c_green,c_green,c_green,1);

if iCountdownTimer <= 0
{
if irandom(9) = 1 motion_set(random_range(45,225), 1 + random(5));

if distance_to_object(objFlowerTest) < 64 && bMove == true
{
	if instance_exists(objFlowerTest)
	{
	move_towards_point(instance_nearest(x,y,objFlowerTest).x,instance_nearest(x,y,objFlowerTest).y, 4);
	}
}
if distance_to_object(objFlowerDead) < 64 && bMove == true
{
	if instance_exists(objFlowerDead)
	{
	move_towards_point(instance_nearest(x,y,objFlowerDead).x,instance_nearest(x,y,objFlowerDead).y, 4);
	}
}
}
//else if distance_to_object(objFlowerTest) < 5
//{
//	if irandom(9) = 1 motion_set(random_range(45,225), 1 + random(5));
//	iFlowerCounter = 180;
//	bMove = false;
//}

//iFlowerCounter -= 1;

//if iFlowerCounter <= 0
//{
//	if irandom(9) = 1 motion_set(random_range(45,225), 1 + random(5));
//}

//show_debug_message(iFlowerCounter);