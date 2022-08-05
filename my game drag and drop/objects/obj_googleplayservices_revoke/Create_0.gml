


image_speed = 0;
image_index = 0;
image_xscale=view_wport[0]/126;
image_yscale=view_wport[0]/504;
if (global.locked = false)
{
	text = "Revoke Account Access";
	image_index = 0;
}
else
{
	text = "Need to Be Signed In";
	image_index = 2;

}
