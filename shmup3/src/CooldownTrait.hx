

package ;



class CooldownTrait extends luxe.Component
{
	public var current : Int;
	public var max : Int;
	
	
	public function new(_current:Int, _max:Int) {
		super({ name:'trait.cooldown' });
		
		this.current = _current;
		this.max = _max;
		
	} //new
	
} //CooldownTrait