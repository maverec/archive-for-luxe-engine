
package ;



class BulletGeneratorBehavior extends luxe.Component
{
	var _cd : CooldownTrait;
	// var _mag : MagTrait;
	var _inputkey : InputKeyTrait;
	var _alternating : Bool;
	
	
	override function init() : Void {
		if(entity.has( 'trait.cooldown' )) {
			_cd = entity.get('trait.cooldown');
		} //_cd
		//TEST:
		// if(entity.has( 'trait.magazine' )) {
		// 	_mag = entity.get('trait.magazine');
		// } //_mag
		if(entity.has( 'trait.inputkey' )) {
			_inputkey = entity.get('trait.inputkey');
		} //_inputkey
		
		_alternating = true;
		
	} //init
	
	override function update(dt:Float) : Void {
		if(entity.active) {
		// if(_mag.cartridge.feedingSpring) {
			// if(_inputkey.fire) {
				if(_cd.current > 0) {
					_cd.current--;
				}
				
				if(_cd.current == 0) {
					_cd.current = _cd.max;
					
					var bullet = new luxe.Sprite({
						name : 'subentity.bullet',
						name_unique : true,
						size : new luxe.Vector(7,2),
						color : new luxe.Color().rgb(0xFFFFFF)
					});
					
					bullet.add(new VelocityTrait( 400,0 ));
					bullet.add(new MovementBehavior( ));
					
					if(_alternating) {
						bullet.pos.x = entity.pos.x + 16;
						bullet.pos.y = entity.pos.y + 8;
					} else {
						bullet.pos.x = entity.pos.x + 16;
						bullet.pos.y = entity.pos.y + 24;
					}
					
				}
				_alternating = !_alternating;
				
			// }
			
		// }
		} 
		// else if(!entity.active) {
		// 	null;
		// }
		
	} //update
	
} //BulletGeneratorBehavior