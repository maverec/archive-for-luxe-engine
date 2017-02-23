
package ;


class FiringS extends luxe.Component
{
	var _input : InputKeyD;
	var _delay : DelayD;
	var alternateCannon : Bool = false;
	
	
	override function init() : Void {
		if ( entity.has('data.input') ) _input = entity.get( 'data.input' );
		if ( entity.has('data.delay') ) _delay = entity.get( 'data.delay' );
		
	} //init
	
	override function update( dt:Float ) : Void {
		if ( _input.shoot ) {
			if ( entity.active ) {
				if ( _delay.cooldown > 0 ) {
					_delay.cooldown--;
				}
				if ( _delay.cooldown == 0 ) {
					_delay.cooldown = _delay.maxcooldown;
					
					if ( alternateCannon ) {
						createBullet(6);
					} else {
						createBullet(26);
					}
				}
			}
			alternateCannon = !alternateCannon;
		}
		
	} //update
	
	function createBullet( ynum:Int ) {
		var _bullet : luxe.Sprite = new luxe.Sprite({
			name : 'bullet',
			name_unique : true,
			size : new luxe.Vector(7, 2),
			pos : new luxe.Vector(entity.pos.x + 16, entity.pos.y + ynum),
			color : new luxe.Color().rgb(0xFFFFFF)
		});
		
		_bullet.add( new SpeedData(500,0) );
		_bullet.add( new MovementS() );
		_bullet.add( new BoundsD(-50, Luxe.screen.h, -50, Luxe.screen.w) );
		_bullet.add( new KillBoundsS() );
		
	} //createBullet
	
} //FiringSystem