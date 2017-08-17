///__get_input();
var last;

var haxisMulti = 1;
if(h_last == round(gamepad_axis_value(0, gp_axislh)))
    haxisMulti = 0;
    
last = global.input_h;
global.input_h = sign((keyboard_check(vk_left) - keyboard_check(vk_right)) + (gamepad_button_check(0, gp_padl) - gamepad_button_check(0, gp_padr) + round(-gamepad_axis_value(0, gp_axislh))));
global.input_h_down = sign((keyboard_check_pressed(vk_left) - keyboard_check_pressed(vk_right)) + (gamepad_button_check_pressed(0, gp_padl) - gamepad_button_check_pressed(0, gp_padr) + (round(-gamepad_axis_value(0, gp_axislh)) * haxisMulti)));
global.input_h_up = 0;
if(last != global.input_h && last != 0)
    global.input_h_up = last;

var vaxisMulti = 1;
if(v_last == round(gamepad_axis_value(0, gp_axislv)))
    vaxisMulti = 0;   
  
last = global.input_v;  
global.input_v = -sign((keyboard_check(vk_down) - keyboard_check(vk_up)) + (gamepad_button_check(0, gp_padd) - gamepad_button_check(0, gp_padu) + round(gamepad_axis_value(0, gp_axislv))));
global.input_v_down = -sign((keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)) + (gamepad_button_check_pressed(0, gp_padd) - gamepad_button_check_pressed(0, gp_padu) + (round(gamepad_axis_value(0, gp_axislv)) * vaxisMulti)));
global.input_v_up = 0;
if(last != global.input_v && last != 0)
    global.input_v_up = last;
    
global.input_shoulder = sign((keyboard_check(ord("A")) - keyboard_check(ord("S"))) + (gamepad_button_check(0, gp_shoulderl) - gamepad_button_check(0, gp_shoulderr)));
global.input_shoulder_down = sign((keyboard_check_pressed(ord("A")) - keyboard_check_pressed(ord("S"))) + (gamepad_button_check_pressed(0, gp_shoulderl) - gamepad_button_check_pressed(0, gp_shoulderr)));
global.input_shoulder_up = sign((keyboard_check_released(ord("A")) - keyboard_check_released(ord("S"))) + (gamepad_button_check_released(0, gp_shoulderl) - gamepad_button_check_released(0, gp_shoulderr)));

global.input_select = sign((keyboard_check(ord("Z")) - keyboard_check(ord("X"))) + (gamepad_button_check(0, gp_face1) - gamepad_button_check(0, gp_face2)));
global.input_select_down = sign((keyboard_check_pressed(ord("Z")) - keyboard_check_pressed(ord("X"))) + (gamepad_button_check_pressed(0, gp_face1) - gamepad_button_check_pressed(0, gp_face2)));
global.input_select_up = sign((keyboard_check_released(ord("Z")) - keyboard_check_released(ord("X"))) + (gamepad_button_check_released(0, gp_face1) - gamepad_button_check_released(0, gp_face2)));

global.input_rh = sign((round(-gamepad_axis_value(0, gp_axisrh))));
global.input_rv = -sign((round(-gamepad_axis_value(0, gp_axisrv))));

h_last = round(gamepad_axis_value(0, gp_axislh));
v_last = round(gamepad_axis_value(0, gp_axislv));