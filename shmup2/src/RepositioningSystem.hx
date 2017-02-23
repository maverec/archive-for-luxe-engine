
package ;



class RepositioningSystem extends luxe.Component
{
	var _pos : PositionComponent;
	
	
	override function init() : Void {
		if(entity.has( 'component.position' )) {
			_pos = entity.get('component.position');
		} //_pos
		
		entity.pos.x = _pos.x;
		entity.pos.y = _pos.y;
		
	} //init
	
} //RepositioningSystem