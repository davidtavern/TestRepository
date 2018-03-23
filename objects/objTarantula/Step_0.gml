if(Cooldown <= 0)
{
	instance_create_layer(x, y, "Instances", objWeb);
	objWeb.image_xscale = 0;
	objWeb.image_yscale = 0;
	Cooldown = 25;
}

Cooldown += -1;