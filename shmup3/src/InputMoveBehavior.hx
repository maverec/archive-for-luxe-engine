
package ;

import luxe.Input;



class InputMoveBehavior extends luxe.Component
{
	var _inputkey : InputKeyTrait;
	var _velocity : VelocityTrait;
	
	
	override function init() : Void {
		if(entity.has( 'trait.inputkey' )) {
			_inputkey = entity.get('trait.inputkey');
		} //_inputkey
		if(entity.has( 'trait.velocity' )) {
			_velocity = entity.get('trait.velocity');
		} //_velocity

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