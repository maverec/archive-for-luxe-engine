
package ;

import luxe.States;


class Play extends State
{
	var blueship : luxe.Visual;
	
	public function new() {
		super({ name : 'play' });
	} //new
	
	override function init() : Void {
		blueship = new luxe.Visual({
			name : 'player',
			pos : new luxe.Vector( 80, Luxe.screen.h / 2 ),
			size : new luxe.Vector( 16, 32 ),
			color : new luxe.Color().rgb( 0x0000FF )
		});
		
		blueship.add( new InputKeyD({ name:'data.input' }) );
		blueship.add( new InputMovementS() );
		blueship.add( new BoundsD(
			0,
			Luxe.screen.h - blueship.size.y,
			0,
			Luxe.screen.w - blueship.size.x
		) );
		blueship.add( new BoundsS() );
		blueship.add( new DelayD(0, 5) );
		blueship.add( new FiringS() );
		
		var _spawnEn = new luxe.Entity();
		
		_spawnEn.add( new DelayD(0, Math.random() * 30 + 20) );
		_spawnEn.add( new SpawnS(true, true) );
		
	} //init
	
} //Play