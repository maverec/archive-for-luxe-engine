
package ;


class VelocityComponent extends luxe.Component
{
	public var x : Float;
	public var y : Float;
	var speedx : Float;
	var speedy : Float;
	
	
	public function new(speedx:Float, speedy:Float) {
		super({ name:'component.velocity' });
		
		this.speedx = speedx;
		this.speedy = speedy;
		
	} //new
	
	override function update(dt:Float) : Void {
		x = speedx * dt;
		y = speedy * dt;
		
	} //update
	
} //VelocityComponent