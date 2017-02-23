
package ;



class VelocityComponent extends luxe.Component
{
	public var x : Float;
	public var y : Float;
	var _speedx : Float;
	var _speedy : Float;
	
	
	public function new(speedX:Float, speedY:Float) {
		super({ name:'component.velocity' });
		
		this._speedx = speedX;
		this._speedy = speedY;
		
	} //new
	
	override function update(dt:Float) : Void {
		x = _speedx * dt;
		y = _speedy * dt;
		
	} //update
	
} //VelocityComponent