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
	y = y + iSpd;
	instance_change(objScorpion2, true);
}
if keyboard_check(ord("W")) || keyboard_check(vk_up)
{
	y = y - iSpd;
	instance_change(objScorpion, true);
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