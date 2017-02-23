package ;


class BounceSystem extends luxe.Component
{
        var _velocity : Speed;
	// var _target : Target;
	
	override function init() {
		if(entity.has( 'component.speed' )) {
                        _velocity = entity.get('component.speed');
                }
                // if(entity.has( 'component.target' )) {
                //         _target = entity.get('component.target');
                // }
	} //init
	
	override function update(dt:Float) {
		var _direction : Int = (Math.random() > .5) ? (1):(-1);
		var _randomAngle : Float = (Math.random() * Math.PI / 2) - 60;
                var _yvelocity : Float = Math.sin(_randomAngle) * 3;
                var _xvelocity : Float = _direction * Math.cos(_randomAngle) * 3;
		
		if (entity.pos.y <= Play.TILE_SIZE / 2 || entity.pos.y >= Luxe.screen.h - Play.TILE_SIZE / 2)
			_velocity.y *= -1;
			
		// if (_velocity.xspeed < 0 && entity.pos.x < 22 
		// 	&& entity.pos.y >= _target.pos.y 
		// 	&& entity.pos.y <= _target.pos.y + 50 ) {
		// 		_velocity.x = _xvelocity;
		// 		_velocity.y = _yvelocity;
		// 		entity.pos.x = 22;
		// }
		// 
		// if (_velocity.x > 0 && entity.pos.x > 606
		// 	&& entity.pos.y >= paddleB.pos.y 
		// 	&& entity.pos.y <= paddleB.pos.y + 50 ) {
		// 		currentvelocity.xspeed = xvelocity;
		// 		currentvelocity.yspeed = yvelocity;
		// 		entity.pos.x = 606;
		// }
	} //update
        
} //BounceSystem