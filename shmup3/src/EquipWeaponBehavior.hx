
package ;



class EquipWeaponBehavior extends luxe.Component
{
	// var _holster : AssignWeaponTrait;
	var _ch : CharacterTrait;
	var _weapon : WeaponTrait;
	
	
	override function init() : Void {
		// if(entity.has( 'trait.weapon_assigned' )) {
		// 	_holster = entity.get('trait.weapon_assigned');
		// } //_holster
		
		if(entity.has( 'trait.character' )) {
			_ch = entity.get('trait.character');
		} //_ch
		if(entity.has( 'trait.weapon' )) {
			_weapon = entity.get('trait.weapon');
		} //_weapon
			
			// _holster.weapon.pos.x = entity.pos.x;
			// _holster.weapon.pos.y = entity.pos.y;

	} //init
	
	override function update(dt:Float) : Void {
		// _ch.character.pos.x = _weapon.firearm.pos.x;
		// _ch.character.pos.y = _weapon.firearm.pos.y;
		
	} //update
	
} //EquipWeaponBehavior