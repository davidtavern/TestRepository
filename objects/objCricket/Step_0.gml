if irandom(9) = 1 motion_set(random_range(0,360), 1 + random(5));

if x <= 0
{
	x = x + 10;
}
if x >= room_width
{
	x = x - 10;
}
if y <= 0
{
	y = y + 10;
}
if y >= room_height
{
	y = y - 10;
}

if distance_to_object(objScorpion) < 128 || distance_to_object(objScorpion2) < 128
{
	if instance_exists(objScorpion)
	{
    playerdirection = point_direction(x,y,objScorpion.x,objScorpion.y);
    direction = playerdirection+180;
    speed = 3;
	}
	if instance_exists(objScorpion2)
	{
	playerdirection2 = point_direction(x,y,objScorpion2.x,objScorpion2.y);
    direction = playerdirection2+180;
    speed = 3;
	}

} else {
    if irandom(9) = 1 motion_set(random_range(0,360), 1 + random(5));
}