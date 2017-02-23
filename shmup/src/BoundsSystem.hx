
package ;


class BoundsSystem extends System
{
	var _bounds : BoundsComponent;
	
	
	override function init() : Void {
		if(entity.has( 'component.bounds' )) {
			_bounds = entity.get('component.bounds');
		}
		
	} //init
	
	override function update(dt:Float) : Void {
		if(entity.pos.y <= _bounds.top) entity.pos.y = _bounds.top;
		if(entity.pos.y >= _bounds.bottom) entity.pos.y = _bounds.bottom;
		if(entity.pos.x <= _bounds.left) entity.pos.x = _bounds.left;
		if(entity.pos.x >= _bounds.right) entity.pos.x = _bounds.right;
		
	} //update
	
} //BoundsSystem