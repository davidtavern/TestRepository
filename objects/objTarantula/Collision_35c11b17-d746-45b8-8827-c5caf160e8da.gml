iSpiderHp -= 1;

if iSpiderHp <= 0
{
	bDead = true;
}

if iSpiderHp <= 0 && iFadeCounter <= 0
{
	instance_destroy();
}

if iFadeCounter == -1
{
	instance_destroy();
}

show_debug_message(iSpiderHp);