
package ;



class LoadMagBehavior extends luxe.Component
{
	var _mag : MagTrait;
	var _weapon : WeaponTrait;
	
	
	override function init() : Void {
		if(entity.has( 'trait.magazine' )) {
			_mag = entity.get('trait.magazine');
		} //_mag
		if(entity.has( 'trait.weapon' )) {
			_weapon = entity.get('trait.weapon');
		} //_weapon
		
		// _mag.cartridge.active = false;
		
	} //init
	
	override function update(dt:Float) : Void {
		// _weapon.firearm.pos.x = _mag.cartridge.pos.x;
		// _weapon.firearm.pos.y = _mag.cartridge.pos.y;
		
		if(_weapon.firearm.trigger) {
			_mag.cartridge.feedingSpring = true;
		} else if(!_weapon.firearm.trigger) {
			_mag.cartridge.feedingSpring = false;
		}
		
		// if(entity.active) {
		// 	_mag.cartridge.active = true;
		// } else {
		// 	_mag.cartridge.active = false;
		// }
		
	} //update
	
} //LoadMagBehavior