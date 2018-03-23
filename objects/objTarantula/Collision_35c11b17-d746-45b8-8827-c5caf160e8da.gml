iSpiderHp -= 1;

if iSpiderHp <= 0
{
instance_destroy();
}

show_debug_message(iSpiderHp);