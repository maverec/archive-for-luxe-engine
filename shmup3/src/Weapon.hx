
package ;

import luxe.options.EntityOptions;


class Weapon extends luxe.Entity
{
	public var trigger : Bool = false;
	
	
	public function new(_options:WeaponOptions) {
		if(_options.trigger != null) {
			this.trigger = _options.trigger;
		} //trigger
		
		super(_options);
		
	} //new
	
} //Weapon


typedef WeaponOptions = {
	> EntityOptions,
	
	@:optional var trigger : Bool;
	
} //WeaponOptions