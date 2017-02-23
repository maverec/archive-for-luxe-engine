
package ;

import luxe.Input;



class InputMoveSystem extends luxe.Component
{
	// var _graphic : DrawSubSystem;
	var _inputkey : InputKeyComponent;
	var _velocity : VelocityComponent;
	// var _pos : PositionComponent;
	
	
	override function init() : Void {
		// if(entity.has( 'sub.system.draw' )) {
			// _graphic = entity.get('sub.system.draw');
		// } //_graphic
		if(entity.has( 'component.inputkey' )) {
			_inputkey = entity.get('component.inputkey');
		} //_inputkey
		if(entity.has( 'component.velocity' )) {
			_velocity = entity.get('component.velocity');
		} //_velocity
		// if(entity.has( 'component.position' )) {
		// 	_pos = entity.get('component.position');
		// } //_pos
		
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