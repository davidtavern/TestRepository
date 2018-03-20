if objButterfly2.iCountdownTimer > 0
{
if (dragging) {
   with (inst) {
      x = mouse_x + other.mdx;
      y = mouse_y + other.mdy;
   }
   if (!mouse_check_button(mb_left)) {
      dragging = false;
      inst = noone;
   }
}
else {
   if (mouse_check_button_pressed(mb_left)) {
      inst = instance_position(mouse_x, mouse_y, objFlytrapTest);
      if (inst != noone) {
         dragging = true;
         mdx = inst.x - mouse_x;
         mdy = inst.y - mouse_y;
      }
   }
}
}

move_snap(32, 32);

iOpenCounter -= 1;

if iOpenCounter <= 20
{
instance_change(objFlytrapTest, true);
}

//show_debug_message(iOpenCounter);