
package ;

import luxe.States;


class Play extends State
{
	var _player : luxe.Entity;
	
	
	public function new() {
		super({ name : 'play' });
		
	} //new
	
	override function init() : Void {
		_player = new luxe.Visual({
			name : 'entity.player',
			pos : new luxe.Vector(80, Luxe.screen.h / 2),
			size : new luxe.Vector(16,32),
			color : new luxe.Color().rgb(0x0000FF)
		});
		
		_player.add(new ColorComponent( new luxe.Color().rgb(0xFFFF00) ));
		_player.add(new VelocityComponent( 300,300 ));
		_player.add(new InputKeyComponent( ));
		_player.add(new InputMoveSystem( ));
		_player.add(new BoundsComponent( 0, Luxe.screen.h - 32, 0, Luxe.screen.w - 16 ));
		_player.add(new BoundsSystem( ));
		
	} //init
	
} //Play