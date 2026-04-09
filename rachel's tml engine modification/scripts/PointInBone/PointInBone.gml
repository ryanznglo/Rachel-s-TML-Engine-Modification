function PointInBone(px, py, x1, y1, x2, y2, thickness)
{
    var dx = x2 - x1;
    var dy = y2 - y1;

    var len_sq = dx*dx + dy*dy;
    if (len_sq <= 0) return false;

    // projection (0 → 1 along the segment)
    var t = ((px - x1)*dx + (py - y1)*dy) / len_sq;

    if (t < 0 || t > 1) return false;

    // closest point on line
    var cx = x1 + t * dx;
    var cy = y1 + t * dy;

    // REAL distance to segment
    var dist = point_distance(px, py, cx, cy);

    return dist <= thickness;
}