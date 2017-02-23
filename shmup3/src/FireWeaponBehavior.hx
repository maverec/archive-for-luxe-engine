
package ;



class FireWeaponBehavior extends luxe.Component
{
	// var _holster : AssignWeaponTrait;
	var _inputkey : InputKeyTrait;
	var _weapon : WeaponTrait;
	
	
	override function init() : Void {
		// if(entity.has( 'trait.weapon_assigned' )) {
		// 	_holster = entity.get('trait.weapon_assigned');
		// } //_holster
		if(entity.has( 'trait.inputkey' )) {
			_inputkey = entity.get('trait.inputkey');
		} //_inputkey
		if(entity.has( 'trait.weapon' )) {
			_weapon = entity.get('trait.weapon');
		} //_weapon
		
		// _holster.weapon.active = false;
		
	} //init
	
	override function update(dt:Float) : Void {
		if(_inputkey.fire) {
			// _holster.weapon.active = true;
			_weapon.firearm.trigger = true;
		} else if(!_inputkey.fire) {
			// _holster.weapon.active = false;
			_weapon.firearm.trigger = false;

		}
		
	} //update
	
} //FireWeaponBehavior