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
}
if keyboard_check(ord("W")) || keyboard_check(vk_up)
{
	y = y - iSpd;
}

var iShootCheck;
iShootCheck = mouse_check_button(mb_left);
if (iShootCheck)
{
	instance_create_layer(x, y, "Instances", objBullet);
}