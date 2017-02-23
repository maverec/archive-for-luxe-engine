
package ;

import luxe.Input;


class InputMoveSystem extends System
{
	var _inputkey : InputKeyComponent;
	var _velocity : VelocityComponent;
	
	
	override function init() : Void {
		if(entity.has( 'component.inputkey' )) {
			_inputkey = entity.get('component.inputkey');
		}
		if(entity.has( 'component.velocity' )) {
			_velocity = entity.get('component.velocity');
		}
		
	} //init
	
	override function update(dt:Float) : Void {
		if(_inputkey.move) {
			if(_inputkey.up) {
				entity.pos.y -= _velocity.y;
			}
			if(_inputkey.down) {
				entity.pos.y += _velocity.y;
			}
			if(_inputkey.left) {
				entity.pos.x -= _velocity.x;
			}
			if(_inputkey.right) {
				entity.pos.x += _velocity.x;
			}
			
		}
		
	} //update
	
} //InputMoveSystem