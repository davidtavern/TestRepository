/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 58993F0F
/// @DnDArgument : "obj" "objScorpion2"
/// @DnDSaveInfo : "obj" "a0160a6b-6142-49fb-b821-4fb07158b9d8"
var l58993F0F_0 = false;
l58993F0F_0 = instance_exists(objScorpion2);
if(l58993F0F_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7AC0D475
	/// @DnDParent : 58993F0F
	/// @DnDArgument : "x" "objScorpion2.x"
	/// @DnDArgument : "y" "objScorpion2.y"
	direction = point_direction(x, y, objScorpion2.x, objScorpion2.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 21F07E08
	/// @DnDParent : 58993F0F
	/// @DnDArgument : "speed" "iSpeed"
	speed = iSpeed;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 75E00B34
/// @DnDArgument : "obj" "objScorpion"
/// @DnDSaveInfo : "obj" "ed7986c8-a79a-4656-8dbf-471bdafa60ef"
var l75E00B34_0 = false;
l75E00B34_0 = instance_exists(objScorpion);
if(l75E00B34_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 59C016AD
	/// @DnDParent : 75E00B34
	/// @DnDArgument : "x" "objScorpion.x"
	/// @DnDArgument : "y" "objScorpion.y"
	direction = point_direction(x, y, objScorpion.x, objScorpion.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 188085C7
	/// @DnDParent : 75E00B34
	/// @DnDArgument : "speed" "iSpeed"
	speed = iSpeed;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6D6E40A2
/// @DnDArgument : "code" "if(iCooldown <= 0)$(13_10){$(13_10)	instance_create_layer(x, y, "Instances", objWeb);$(13_10)	iCooldown = 25;$(13_10)}$(13_10)$(13_10)iCooldown += -1;"
if(iCooldown <= 0)
{
	instance_create_layer(x, y, "Instances", objWeb);
	iCooldown = 25;
}

iCooldown += -1;