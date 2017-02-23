
package ;



class MovementSystem extends luxe.Component
{
	var _velocity : VelocityComponent;
	
	
	override function init() : Void {
		if(entity.has( 'component.velocity' )) {
			_velocity = entity.get('component.velocity');
		} //_velocity
		
	} //init
	
	override function update(dt:Float) : Void {
		entity.pos.x += _velocity.x;
		entity.pos.y += _velocity.y;
		
	} //update
	
} //MovementSystem