
package ;



class BoundsSystem extends luxe.Component
{
	var _graphic : DrawSubSystem;
	var _bounds : BoundsComponent;
	// var _size : SizeComponent;
	// var _pos : PositionComponent;
	// var _origin : OriginSubSystem;
	
	
	override function init() : Void {
		if(entity.has( 'sub.system.draw' )) {
			_graphic = entity.get('sub.system.draw');
		} //_graphic
		if(entity.has( 'component.bounds' )) {
			_bounds = entity.get('component.bounds');
		} //_bounds
		// if(entity.has( 'component.size' )) {
		// 	_size = entity.get('component.size');
		// } //_size
		// if(entity.has( 'component.position' )) {
		// 	_pos = entity.get('component.position');
		// } //_pos
		// if(entity.has( 'sub.system.origin' )) {
		// 	_origin = entity.get('sub.system.origin');
		// } //_origin
		
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