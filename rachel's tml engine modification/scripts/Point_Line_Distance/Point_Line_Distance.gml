function Point_Line_Distance(px, py, x1, y1, x2, y2)
{
    var dx = x2 - x1;
    var dy = y2 - y1;

    var length_sq = dx*dx + dy*dy;
    if (length_sq <= 0) return point_distance(px, py, x1, y1);

    var t = ((px - x1)*dx + (py - y1)*dy) / length_sq;
    t = clamp(t, 0, 1);

    var lx = x1 + t * dx;
    var ly = y1 + t * dy;

    return point_distance(px, py, lx, ly);
}