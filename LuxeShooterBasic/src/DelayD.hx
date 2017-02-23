
package ;


class DelayD extends luxe.Component
{
	public var cooldown : Float;
	public var maxcooldown : Float;
	
	public function new( cd:Float, maxcd:Float ) {
		super({ name:'data.delay' });
		
		this.cooldown = cd;
		this.maxcooldown = maxcd;
		
	} //new
	
} //DelayData