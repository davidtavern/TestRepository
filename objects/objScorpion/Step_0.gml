/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 797E8991
/// @DnDArgument : "code" "if keyboard_check(ord("A")) || keyboard_check(vk_left)$(13_10){$(13_10)	x = x - iSpd;$(13_10)}$(13_10)if keyboard_check(ord("D")) || keyboard_check(vk_right)$(13_10){$(13_10)	x = x + iSpd;$(13_10)}$(13_10)if keyboard_check(ord("S")) || keyboard_check(vk_down)$(13_10){$(13_10)	y = y + iSpd;$(13_10)}$(13_10)if keyboard_check(ord("W")) || keyboard_check(vk_up)$(13_10){$(13_10)	y = y - iSpd;$(13_10)}$(13_10)"
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

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 179C1824
var l179C1824_0;
l179C1824_0 = mouse_check_button(mb_left);
if (l179C1824_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22CBF168
	/// @DnDParent : 179C1824
	/// @DnDArgument : "var" "Cooldown"
	/// @DnDArgument : "op" "3"
	if(Cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4D1A4B33
		/// @DnDParent : 22CBF168
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "objBullet"
		/// @DnDSaveInfo : "objectid" "763f8550-9a71-4fe3-8f9b-a4bbfaac631d"
		instance_create_layer(x, y, "Instances", objBullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BEA38F8
		/// @DnDParent : 22CBF168
		/// @DnDArgument : "expr" "25"
		/// @DnDArgument : "var" "Cooldown"
		Cooldown = 25;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7271AC78
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Cooldown"
Cooldown += -1;