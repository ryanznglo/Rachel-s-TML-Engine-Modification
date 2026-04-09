function CreateBone(
    _x,
    _y,
    _length,
    _hspeed,
    _vspeed,
    _angle,
    _paps   = false,
    _rot    = 0,
    _colour = c_white,
    _origin = 0,
    _sinint = 0,
    _sinmult= 0,
    _sinoff = 0,
    _tri    = false,
    _top    = false,
	_centered = false,
)

{
    var inst = instance_create_depth(_x, _y, DEPTH_BATTLE.BULLET, bullet_bone);

    inst.length  = _length;
    inst.hspeed  = _hspeed;
    inst.vspeed  = _vspeed;
    inst.angle   = _angle;

    inst.paps    = _paps;
    inst.rot     = _rot;
    inst.colour  = _colour;
    inst.origin  = _origin;

    inst.sinint  = _sinint;
    inst.sinmult = _sinmult;
    inst.sinoff  = _sinoff;

    inst.tri     = _tri;
    inst.top     = _top;
    inst.centered     = _centered;

    return inst;
}