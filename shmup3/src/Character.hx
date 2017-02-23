
package ;

import luxe.options.SpriteOptions;


class Character extends luxe.Sprite
{
	public var health : Float = 1;
	public var velocity : luxe.Vector;
	// public var bounds : luxe.Rectangle;
	
	
	public function new(_options:CharacterOptions) {
		if(_options.health != null) {
			this.health = _options.health;
		} //hp
		
		if(_options.velocity != null) {
			this.velocity = _options.velocity;
		} else {
			this.velocity = new luxe.Vector(0,0);
		} //velocity
		
		// if(_options.bounds != null) {
		// 	this.bounds = _options.bounds;
		// } else {
		// 	this.bounds = new luxe.Rectangle(0,0,Luxe.screen.width - size.x, Luxe.screen.height - size.y);
		// } //bounds
		// 
		
		super(_options);
		
	}
	
	// override function init() : Void {
	// 	if(this.has( 'trait.health' )) {
	// 		health = this.get('trait.health');
	// 	} else {
	// 		health.points = 1;
	// 	} //
	// 	
	// 	if(this.has( 'trait.velocity' )) {
	// 		velocity = this.get('trait.velocity');
	// 	} else {
	// 		velocity.x = velocity.y = 0;
	// 	} //
	// 	
	// }
	
} //Character


typedef CharacterOptions = {
	> SpriteOptions,
	
	@:optional var health : Float;
	@:optional var velocity : luxe.Vector;
	// @:optional var bounds : luxe.Rectangle;
	
} //CharacterOptions