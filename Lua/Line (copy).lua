--for Dear Hossein :)
----------------------------------------
----			Draw Lines			----
----------------------------------------

----------------------------------------
----		Local Variables			----
----------------------------------------
local corner_r = 50
--local bg_colour = 0xc0c0c0
--local bg_colour = 0x0099cc
--local bg_alpha = 0.08
local vindsl_hack_height = -2
local cs, cr = nil
----------------------------------------
----		Requried Part			----
----------------------------------------
require 'cairo'
----------------------------------------
----		Functions Part			----
----------------------------------------
function conky_drawLine()
	if conky_window == nil then return end
	if cs == nil then cairo_surface_destroy(cs) end
	if cr == nil then cairo_destroy(cr) end
	local w = conky_window.width
	local h = conky_window.height
	local v = vindsl_hack_height
	local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
	local cr = cairo_create(cs)

	--4th-Left
	cairo_set_line_width (cr, 2);
	--cairo_move_to (cr, 50, 400); 
	--cairo_line_to (cr, 180, 400);
	cairo_set_source_rgba (cr, 102, 178, 255, 0.9);
	cairo_stroke (cr);

	--4th-Right
	cairo_set_line_width (cr, 2);
	--cairo_move_to (cr, 287, 400); 
	--cairo_line_to (cr, 453, 400);
	cairo_set_source_rgba (cr, 102, 178, 255, 0.9);
	cairo_stroke (cr);

	--3th-Left
	cairo_set_line_width (cr, 2);
	--cairo_move_to (cr, 60, 350); 
	--cairo_line_to (cr, 190, 350);
	cairo_set_source_rgba (cr, 51, 153, 255, 0.9);
	cairo_stroke (cr);

	--3th-Right
	cairo_set_line_width (cr, 2);
	--cairo_move_to (cr, 275, 350); 
	--cairo_line_to (cr, 443, 350);
	cairo_set_source_rgba (cr, 51, 153, 255, 0.9);
	cairo_stroke (cr);

	--2th-Left
	cairo_set_line_width (cr, 2);
	--cairo_move_to (cr, 70, 300); 
	--cairo_line_to (cr, 200, 300);
	cairo_set_source_rgba (cr, 51, 153, 255, 0.9);
	cairo_stroke (cr);

	--2th-Right
	cairo_set_line_width (cr, 2);
	--cairo_move_to (cr, 264, 300); 
	--cairo_line_to (cr, 433, 300);
	cairo_set_source_rgba (cr, 51, 153, 255, 0.9);
	cairo_stroke (cr);

	--1th-Left
	cairo_set_line_width (cr, 2);
	--cairo_move_to (cr, 80, 250); 
	--cairo_line_to (cr, 208, 250);
	cairo_set_source_rgba (cr, 51, 153, 255, 0.9);
	cairo_stroke (cr);

	--1th-Right
	cairo_set_line_width (cr, 2);
	--cairo_move_to (cr, 254, 250); 
	--cairo_line_to (cr, 423, 250);
	cairo_set_source_rgba (cr, 51, 153, 255, 0.9);
	cairo_stroke (cr);

	--InsidRight
	cairo_move_to (cr, 300, 480);
	cairo_line_to (cr, 230, 120);

	--InsidRightinner
	cairo_move_to (cr, 240, 430);
	cairo_line_to (cr, 230, 120);

	--InsideLeft
	cairo_move_to (cr, 127, 480);
	cairo_line_to (cr, 228, 120);

	--Top
	--cairo_move_to (cr, 104, 120);
	--cairo_line_to (cr, 401, 120);

	--Side-left
	cairo_move_to (cr, 228, 120);
	cairo_line_to (cr, 35, 480);

	--Side-Right
	--cairo_move_to (cr, 400, 120);
	--cairo_line_to (cr, 470, 480);

	--bl
	cairo_move_to (cr, 33, 480);
	cairo_line_to (cr, 128, 480);

	--bl
	cairo_move_to (cr, 239, 429);
	cairo_line_to (cr, 300, 480);

	--br
	--cairo_move_to (cr, 299, 480);
	--cairo_line_to (cr, 472, 480);
	cairo_set_line_width (cr, 4);
	cairo_stroke (cr);


	--MiddleTop
	cairo_move_to (cr, 184, 280);
	cairo_line_to (cr, 237, 280);

	--MiddleTop
	--cairo_move_to (cr, 203, 280);
	--cairo_line_to (cr, 250, 280);


	--II-left
	--cairo_move_to (cr, 221, 482);
	--cairo_line_to (cr, 227, 250);

	--II-right
	--cairo_move_to (cr, 270, 482);
	--cairo_line_to (cr, 227, 250);

	cairo_set_line_width (cr, 9);
	cairo_stroke (cr);

	--test
	--cairo_move_to (cr, 449, 400);
	--cairo_line_to (cr, 600, 240);

	--cairo_move_to (cr, 439, 350);
	--cairo_line_to (cr, 580, 200);

	--cairo_move_to (cr, 429, 300);
	--cairo_line_to (cr, 560, 160);

	--cairo_move_to (cr, 419, 250);
	--cairo_line_to (cr, 540, 120);

end
