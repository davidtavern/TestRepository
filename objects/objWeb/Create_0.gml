if instance_exists(objScorpion)
{
	direction = point_direction(x, y, objScorpion.x, objScorpion.y);
	image_alpha = 0;
}

if instance_exists(objScorpion2)
{
	direction = point_direction(x, y, objScorpion2.x, objScorpion2.y);
	image_alpha = 0;
}

image_angle = direction;

speed = 6;

iRotation = 0;

iSize = 0;