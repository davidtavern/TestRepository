if(iCooldown <= 0)
{
	instance_create_layer(x, y, "Instances", objWeb);
	objWeb.image_xscale = 0;
	objWeb.image_yscale = 0;
	iCooldown = 25;
}

iCooldown += -1;