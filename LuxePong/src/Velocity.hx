
package ;


class Velocity extends luxe.Component
{
	public var yspeed : Float;
	public var xspeed : Float;
	
	
	public function new( yspeed:Float, xspeed:Float ) {
		super({ name : 'velocity' });
		
		this.yspeed = yspeed;
		this.xspeed = xspeed;
	} //new
	
	override function update( dt:Float ) : Void {
		entity.pos.y += yspeed;
		entity.pos.x += xspeed;
	} //update

}