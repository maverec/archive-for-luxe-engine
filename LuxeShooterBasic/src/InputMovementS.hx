
package ;


class InputMovementS extends luxe.Component
{
	var _input : InputKeyD;
	
	
	override function init() : Void {
		if ( entity.has('data.input') ) _input = entity.get( 'data.input' );
		
	} //init
	
	override function update( dt:Float ) : Void {
		if ( _input.move ) {
			if ( _input.left ) entity.pos.x -= 5;
			if ( _input.right ) entity.pos.x += 5;
			if ( _input.down ) entity.pos.y += 5;
			if ( _input.up ) entity.pos.y -= 5;
			
		}
		
	} //update
	
} //InputMovementSystem