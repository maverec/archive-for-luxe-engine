
package ;



class WeaponTrait extends luxe.Component
{
	public var firearm : Dynamic;
	
	
	public function new(_firearm:Dynamic) {
		super({ name:'trait.weapon' });
		
		this.firearm = _firearm;
		
	} //new
	
} //WeaponTrait