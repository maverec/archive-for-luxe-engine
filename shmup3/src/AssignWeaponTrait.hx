
package ;



class AssignWeaponTrait extends luxe.Component
{
	public var weapon : Dynamic;
	
	
	public function new(_weapon:Dynamic) {
		super({ name:'trait.weapon_assigned' });
		
		this.weapon = _weapon;
		
	} //new
	
} //AssignWeaponTrait