if keyboard_check(ord("A")) || keyboard_check(vk_left)
{
	x = x - iSpd;
}
if keyboard_check(ord("D")) || keyboard_check(vk_right)
{
	x = x + iSpd;
}
if keyboard_check(ord("S")) || keyboard_check(vk_down)
{
	y = y + iSpd;
}
if keyboard_check(ord("W")) || keyboard_check(vk_up)
{
	y = y - iSpd;
}