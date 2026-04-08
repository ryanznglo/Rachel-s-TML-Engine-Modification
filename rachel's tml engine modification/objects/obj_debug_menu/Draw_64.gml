if (!_debug_open) exit;

draw_set_alpha(0.8);
draw_set_color(c_black);
draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));

var width = 260;
var height = array_length(menu_items) * line_height + 40;

draw_rectangle(menu_x, menu_y, menu_x + width, menu_y + height, false);

draw_set_alpha(1);
draw_set_color(c_white);

draw_text(menu_x + 15, menu_y + 10, "DEBUG MENU");

for (var i = 0; i < array_length(menu_items); i++) {

    var text = menu_items[i];

    if (i == 0) {
        text += ": " + string(encounter_list[encounter_index]);
    }

    var y_pos = menu_y + 30 + i * line_height;

    if (i == menu_index) {
        draw_text(menu_x + 15, y_pos, "     " + text);
    } else {
        draw_text(menu_x + 15, y_pos, "" + text);
    }
}