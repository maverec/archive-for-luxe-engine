
package ;


class AISystem extends luxe.Component
{
	var target : luxe.Visual;
	
	
	public function new( target:luxe.Visual ) {
		super();
		this.target = target;
	} //new
	
	override function update( dt:Float ) : Void {
		if ( target.pos.x > 400 && target.pos.y > entity.pos.y + 10 )
			entity.pos.y += 5;
			
		if ( target.pos.x > 400 && target.pos.y < entity.pos.y + 40 )
			entity.pos.y -= 5;
	} //update
}