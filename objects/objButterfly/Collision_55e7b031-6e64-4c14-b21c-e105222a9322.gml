/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11090B2E
/// @DnDArgument : "var" "alarm"
/// @DnDArgument : "op" "3"
if(alarm <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1A1E469F
	/// @DnDApplyTo : bd585063-5d02-412e-b933-6d3ab38ac56f
	/// @DnDParent : 11090B2E
	with(objFlowerTest) instance_destroy();
}