var l58993F0F_0 = false;
l58993F0F_0 = instance_exists(objScorpion2);
if(l58993F0F_0)
{
	direction = point_direction(x, y, objScorpion2.x, objScorpion2.y);

	speed = iSpeed;
}

var l75E00B34_0 = false;
l75E00B34_0 = instance_exists(objScorpion);
if(l75E00B34_0)
{
	direction = point_direction(x, y, objScorpion.x, objScorpion.y);

	speed = iSpeed;
}

if(iCooldown <= 0)
{
	instance_create_layer(x, y, "Instances", objWeb);
	objWeb.image_xscale = 0;
	objWeb.image_yscale = 0;
	iCooldown = 25;
}

iCooldown += -1;

if bDead == true
{
	if iFadeCounter >= 0
	{
		image_alpha -= .0167
		iFadeCounter -= 1;
		if iFadeCounter == -1
		{
			instance_destroy();
			audio_play_sound(Laugh, 10, false);
		}
	}
}

show_debug_message(iFadeCounter);