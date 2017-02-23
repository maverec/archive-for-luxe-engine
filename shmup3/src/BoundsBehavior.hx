
package ;



class BoundsBehavior extends luxe.Component
{
	var _bounds : BoundsTrait;
	
	
	override function init() : Void {
		if(entity.has( 'trait.bounds' )) {
			_bounds = entity.get('trait.bounds');
		} //_bounds
		
	} //init
	
	override function update(dt:Float) : Void {
		if(entity.pos.y <= _bounds.t)
			entity.pos.y = _bounds.t;
		if(entity.pos.y >= _bounds.b)
			entity.pos.y = _bounds.b;
		if(entity.pos.x <= _bounds.l)
			entity.pos.x = _bounds.l;
		if(entity.pos.x >= _bounds.r)
			entity.pos.x = _bounds.r;
		
	} //update
	
} //BoundsSystem