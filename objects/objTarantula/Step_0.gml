if(Cooldown <= 0)
{
	instance_create_layer(x, y, "Instances", objWeb);
	Cooldown = 25;
}

Cooldown += -1;