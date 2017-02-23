
package ;



class DestroyOutBoundsSystem extends luxe.Component
{
	// var _graphic : DrawSubSystem;
	var _bounds : BoundsComponent;
	
	
	override function init() : Void {
		// if(entity.has( 'sub.system.draw' )) {
		// 	_graphic = entity.get('sub.system.draw');
		// } //_graphic
		if(entity.has( 'component.bounds' )) {
			_bounds = entity.get('component.bounds');
		} //_bounds
		
	} //init
	
	override function update(dt:Float) : Void {
		if(entity.pos.y < _bounds.t
			|| entity.pos.y > _bounds.b
			|| entity.pos.x < _bounds.l
			|| entity.pos.x > _bounds.r) {
				
			entity.destroy(true);
		}
		
	} //update
	
} //DestroyOutBoundsSystem