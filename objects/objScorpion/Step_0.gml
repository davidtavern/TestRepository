if keyboard_check(ord("A")) || keyboard_check(vk_left)
{
	x = x - iSpd;
	image_xscale = 1;
}
if keyboard_check(ord("D")) || keyboard_check(vk_right)
{
	x = x + iSpd;
	image_xscale = -1;
}
if keyboard_check(ord("S")) || keyboard_check(vk_down)
{
	while instance_number(objScorpion) > 1
	{
		instance_destroy();
	}
	y = y + iSpd;
	//instance_change(objScorpion2, true);
	object_set_sprite(objScorpion, sprScorpionLeftDown);
	instance_create_layer(x,y,"Instances",objScorpion);
}
if keyboard_check(ord("W")) || keyboard_check(vk_up)
{
	while instance_number(objScorpion) > 1
	{
		instance_destroy();
	}
	y = y - iSpd;
	//instance_change(objScorpion, true);
	object_set_sprite(objScorpion, sprScorpionLeftUp);
	instance_create_layer(x,y,"Instances",objScorpion);
}

if x <= 0
{
	x = x + iSpd;
}
if x >= room_width
{
	x = x - iSpd;
}
if y <= 0
{
	y = y + iSpd;
}
if y >= room_height
{
	y = y - iSpd;
}

var iBulletCheck;
iBulletCheck = mouse_check_button(mb_left);
if (iBulletCheck)
{
	if(Cooldown <= 0)
	{
		instance_create_layer(x, y, "Instances", objBullet);
	
		Cooldown = 25;
	}
}

Cooldown += -1;

if bCaughtNetScorp == true
{
	//bNet = false;
	iInvCounterScorp = 100;
	solid = false;
	//speed = 0.5;
	iSpd = 0.5;
	if instance_exists(objScorpion)
	{
		iWebNearest = instance_nearest(objScorpion.x,objScorpion.y,objWeb);
	}
	
	if instance_exists(objScorpion2)
	{
		iWebNearest = instance_nearest(objScorpion2.x,objScorpion2.y,objWeb);
	}
	
	if instance_exists(objWeb)
	{
		iWebNearest.image_alpha = 1;
		iWebNearest.x = x;
		iWebNearest.y = y;
	}
	iCaughtTimerScorp -= 1;
	if iCaughtTimerScorp <= 0
	{
		iInvCounterScorp = 100;
		iCaughtTimerScorp = 100;
		bCaughtNetScorp = false;
		if instance_exists(objWeb)
		{
			iWebNearest.image_alpha = 0.35;
		}
		iSpd = 4;	
	}
}
else if iInvCounterScorp <= 0
{
	if instance_exists(objWeb)
	{
		if instance_exists(objScorpion)
	{
		iWebNearest = instance_nearest(objScorpion.x,objScorpion.y,objWeb);
	}
	
	if instance_exists(objScorpion2)
	{
		iWebNearest = instance_nearest(objScorpion2.x,objScorpion2.y,objWeb);
	}
		iWebNearest.image_alpha = 1;
		//bNet = true;
	}
}
