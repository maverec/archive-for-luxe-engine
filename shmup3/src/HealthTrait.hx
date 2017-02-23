
package ;



class HealthTrait extends luxe.Component
{
	public var points : Int;
	//remove
	//ceiling
	//current
	//max
	
	
	public function new(_points:Int) {
		super({ name:'trait.health' });
		
		this.points = _points;
		
	} //new
	
} //HealthTrait