iSpd = 4;

Cooldown = 0;

bCaughtNetScorp = false;
iInvCounterScorp = 0;
iCaughtTimerScorp = 100;

if instance_exists(objWeb)
{
if instance_exists(objScorpion)
{
	iWebNearest = instance_nearest(objScorpion.x,objScorpion.y,objWeb);
}
	
if instance_exists(objScorpion2)
{
	iWebNearest = instance_nearest(objScorpion2.x,objScorpion2.y,objWeb);
}
}