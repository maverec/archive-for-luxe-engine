
package ;


class MovementS extends luxe.Component
{
	var _speed : SpeedData;
	
	
	override function init() : Void {
		if ( entity.has('data.speed') ) _speed = entity.get( 'data.speed' );
		
	} //init
	
	override function update( dt:Float ) : Void {
		entity.pos.x += _speed.xspeed * dt;
		entity.pos.y += _speed.yspeed * dt;
		
	} //update
	
} //MovementSystem