/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 284CA276
/// @DnDArgument : "obj" "objScorpion2"
/// @DnDSaveInfo : "obj" "a0160a6b-6142-49fb-b821-4fb07158b9d8"
var l284CA276_0 = false;
l284CA276_0 = instance_exists(objScorpion2);
if(l284CA276_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3D566A26
	/// @DnDParent : 284CA276
	/// @DnDArgument : "x" "objScorpion2.x"
	/// @DnDArgument : "y" "objScorpion2.y"
	direction = point_direction(x, y, objScorpion2.x, objScorpion2.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7B17FA76
	/// @DnDParent : 284CA276
	/// @DnDArgument : "speed" "iSpeed"
	speed = iSpeed;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 62B3FA61
/// @DnDArgument : "obj" "objScorpion"
/// @DnDSaveInfo : "obj" "ed7986c8-a79a-4656-8dbf-471bdafa60ef"
var l62B3FA61_0 = false;
l62B3FA61_0 = instance_exists(objScorpion);
if(l62B3FA61_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 55DD1866
	/// @DnDParent : 62B3FA61
	/// @DnDArgument : "x" "objScorpion.x"
	/// @DnDArgument : "y" "objScorpion.y"
	direction = point_direction(x, y, objScorpion.x, objScorpion.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 78B2A588
	/// @DnDParent : 62B3FA61
	/// @DnDArgument : "speed" "iSpeed"
	speed = iSpeed;
}