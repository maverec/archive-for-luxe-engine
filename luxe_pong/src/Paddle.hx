package ;

import luxe.Color;
import luxe.Sprite;
import luxe.Vector;
import luxe.options.SpriteOptions;

class Paddle extends Sprite
{
	private var block : Sprite;
	
	public function new( options : SpriteOptions ) {
		super( options );
		
		Color().rgb( 0xFFFFFF );
		Vector( 20, 100 );
	}
}