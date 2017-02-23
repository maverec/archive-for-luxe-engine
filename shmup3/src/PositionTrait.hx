

package ;



class PositionTrait extends luxe.Component
{
	public var x : Float;
	public var y : Float;
	
	
	public function new(_posX:Float, _posY:Float) {
		super({ name:'trait.position' });
		
		this.x = _posX;
		this.y = _posY;
		
	} //new
	
} //PositionTrait