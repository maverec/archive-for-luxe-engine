
package ;



class MagTrait extends luxe.Component
{
	public var cartridge : Dynamic;
	
	
	public function new(_cartridge:Dynamic) {
		super({ name:'trait.magazine' });
		
		this.cartridge = _cartridge;
		
	} //new
	
} //MagTrait