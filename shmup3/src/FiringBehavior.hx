
package ;



class FiringBehavior extends luxe.Component
{
	var _ch : CharacterTrait;
	var _inputkey : InputKeyTrait;
	var _cd : CooldownTrait;
	var _alternating : Bool;


	override function init() : Void {
		//TEST:
		if(entity.has( 'trait.character' )) {
			_ch = entity.get('trait.character');
		} //_ch
		if(entity.has( 'trait.inputkey' )) {
			_inputkey = entity.get('trait.inputkey');
		} //_inputkey
		if(entity.has( 'trait.cooldown' )) {
			_cd = entity.get('trait.cooldown');
		} //_cd
		
		_alternating = true;
		
		_ch.character.add(new CooldownTrait( 0,20 ));
		// _ch.character.add(new InputKeyTrait( ));
		// _ch.character.add(new BulletGeneratorBehavior( ));
		
	} //init
	
	override function update(dt:Float) : Void {
		if(_inputkey.fire) {
			_ch.character.add(new BulletGeneratorBehavior( ));
		}
		
		// if(_ch.character.active) {
		// 	if(_inputkey.fire) {
		// 		if(_cd.current > 0) {
		// 			_cd.current--;
		// 		}
		// 		
		// 		if(_cd.current == 0) {
		// 			_cd.current = _cd.max;
		// 			
		// 			var bullet = new luxe.Sprite({
		// 				name : 'subentity.bullet',
		// 				name_unique : true,
		// 				size : new luxe.Vector(7,2),
		// 				color : new luxe.Color().rgb(0xFFFFFF)
		// 			});
		// 			
		// 			bullet.add(new VelocityTrait( 400,0 ));
		// 			bullet.add(new MovementBehavior( ));
		// 			
		// 			if(_alternating) {
		// 				bullet.pos.x = entity.pos.x + 16;
		// 				bullet.pos.y = entity.pos.y + 8;
		// 			} else {
		// 				bullet.pos.x = entity.pos.x + 16;
		// 				bullet.pos.y = entity.pos.y + 24;
		// 			}
		// 			
		// 		}
		// 		_alternating = !_alternating;
		// 		
		// 	}
		// }
		
	} //update
	
} //FiringBehavior