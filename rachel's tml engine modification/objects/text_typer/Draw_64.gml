draw_set_font(font);
draw_set_color(image_blend);
draw_set_alpha(alpha);

draw_text_transformed(
    x,
    y,
    visible_text,
    scale_x,
    scale_y,
    0
);

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(-1);