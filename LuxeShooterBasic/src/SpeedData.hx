
package ;


class SpeedData extends luxe.Component
{
	public var xspeed : Float;
	public var yspeed : Float;
	
	
	public function new( xspeed:Float, yspeed:Float ) {
		super({ name:'data.speed' });
		this.xspeed = xspeed;
		this.yspeed = yspeed;
	
	} //new
	
} //SpeedData