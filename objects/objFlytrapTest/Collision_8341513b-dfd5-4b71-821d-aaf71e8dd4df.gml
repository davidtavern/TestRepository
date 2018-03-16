iOpenCounter = 30

if iOpenCounter == 30
{
instance_change(objFlytrapTest2, true);
}

instance_destroy(other);
//object_set_sprite(other,sprFlytrapClosed);

audio_play_sound(Bite1, 10, false);