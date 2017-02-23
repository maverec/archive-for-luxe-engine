
package ;


class BounceSystem extends luxe.Component
{
	var currentvelocity : Velocity;
	var paddleA : luxe.Visual;
	var paddleB : luxe.Visual;
	
	
	public function new( paddleA:luxe.Visual, paddleB:luxe.Visual ) {
		super();
		
		this.paddleA = paddleA;
		this.paddleB = paddleB;
	}
	
	override function init() : Void {
		if ( entity.has('velocity') ) currentvelocity = get( 'velocity' );
	}
	
	override function update( dt:Float ) : Void {
		var direction : Int = ( Math.random() > .5 ) ? (1):(-1);
		var randomAngle : Float = ( Math.random() * Math.PI / 2 ) - 60;
                var yvelocity : Float = Math.sin( randomAngle ) * 3;
                var xvelocity : Float = direction * Math.cos( randomAngle ) * 3;
		
		if ( entity.pos.y <= 0 || entity.pos.y >= Luxe.screen.h - 12 )
			currentvelocity.yspeed *= -1;
			
		if ( currentvelocity.xspeed < 0 && entity.pos.x < 22 
			&& entity.pos.y >= paddleA.pos.y 
			&& entity.pos.y <= paddleA.pos.y + 50 ) {
				currentvelocity.xspeed = xvelocity;
				currentvelocity.yspeed = yvelocity;
				entity.pos.x = 22;
		}
		
		if ( currentvelocity.xspeed > 0 && entity.pos.x > 606
			&& entity.pos.y >= paddleB.pos.y 
			&& entity.pos.y <= paddleB.pos.y + 50 ) {
				currentvelocity.xspeed = xvelocity;
				currentvelocity.yspeed = yvelocity;
				entity.pos.x = 606;
		}
			
		
	} //update
}