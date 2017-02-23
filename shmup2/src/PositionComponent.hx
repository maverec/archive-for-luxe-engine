
package ;



class PositionComponent extends luxe.Component
{
	public var x : Float;
	public var y : Float;
	
	
	public function new(posX:Float, posY:Float) {
		super({ name:'component.position' });
		
		this.x = posX;
		this.y = posY;
		
	} //new
	
} //PositionComponent