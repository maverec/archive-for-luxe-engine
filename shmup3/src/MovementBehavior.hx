
package ;



class MovementBehavior extends luxe.Component
{
	var _velocity : VelocityTrait;
	
	
	override function init() : Void {
		if(entity.has( 'trait.velocity' )) {
			_velocity = entity.get('trait.velocity');
		} //_velocity
		
	} //init
	
	override function update(dt:Float) : Void {
		entity.pos.x += _velocity.x;
		entity.pos.y += _velocity.y;
		
	} //update
	
} //MovementSystem