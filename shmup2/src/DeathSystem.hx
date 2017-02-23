
package ;

import luxe.Input;


class DeathSystem extends luxe.Component
{
	var _graphic : DrawSubSystem;
	
	
	override function init() : Void {
		if(entity.has( 'sub.system.draw' )) {
			_graphic = entity.get('sub.system.draw');
		} //_graphic
		
	} //init
	
	override function update(dt:Float) : Void {
		if(Luxe.input.keydown( Key.key_p )) {
			// _graphic.sprite.destroy(true);
			entity.destroy(true);
		}
		
	} //update
}