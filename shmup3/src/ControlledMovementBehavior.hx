
package ;



class ControlledMovementBehavior extends luxe.Component
{
	var _ch : CharacterTrait;
	
	
	override function init() : Void {
		//TEST:
		if(entity.has( 'trait.character' )) {
			_ch = entity.get('trait.character');
		} //_ch
		
		
		_ch.character.add(new VelocityTrait( _ch.character.velocity.x,_ch.character.velocity.y ));
		_ch.character.add(new InputKeyTrait( ));
		_ch.character.add(new InputMoveBehavior( ));
		_ch.character.add(new BoundsTrait( 0, Luxe.screen.h - Math.round(_ch.character.size.y), 0, Luxe.screen.w - Math.round(_ch.character.size.x) ));
		_ch.character.add(new BoundsBehavior( ));
		
	} //init
	
} //ControlledMovementBehavior