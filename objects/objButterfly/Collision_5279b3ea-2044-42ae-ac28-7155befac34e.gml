/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F10090E
/// @DnDArgument : "var" "iHP"
/// @DnDArgument : "op" "3"
if(iHP <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2616383F
	/// @DnDApplyTo : 4d0875e8-f346-4e1a-b256-17281b51ed28
	/// @DnDParent : 7F10090E
	with(objButterfly) instance_destroy();
}