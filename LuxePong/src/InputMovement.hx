
package ;

import luxe.Input;


class InputMovement extends luxe.Component
{	
	var keyup : String;
	var keydown : String;
	
	
	public function new( up:String, down:String ) {
		super();
		
		this.keyup = up;
		this.keydown = down;
	} //new
	
	override function update( dt:Float ) : Void {
		if ( Luxe.input.inputdown(keyup) ) {
			entity.pos.y -= 5;
		}
		if ( Luxe.input.inputdown(keydown) ) {
			entity.pos.y += 5;
		}
	} //update
	
}