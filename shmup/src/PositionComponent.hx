
package ;


class PositionComponent extends luxe.Component
{
	public var x : Float;
	public var y : Float;
	
	
	public function new(posx:Float, posy:Float) {
		super({ name:'component.position' });
		
		this.x = posx;
		this.y = posy;
		
	} //new
	
} //PositionComponent