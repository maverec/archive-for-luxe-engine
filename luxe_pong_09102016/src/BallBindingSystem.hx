package ;

import traits.Velocity;
import traits.Bounds;

// Making sure the ball bounces when it makes contact with the top or bottom of
//      the screen and resets its position when making contact with the left or
//      right side. This will also reset the speed when the position is reset,
//      to make sure the ball doesn't slow down during play.
class BallBindingSystem extends luxe.Component
{
        public var binding : Bounds;
        public var vel : Velocity;
        
        public function new() {
                super({ name : 'system.binding.ball' });
        } //new
        
        override function init() {
                if(entity.has( 'trait.bounds' )) { binding = entity.get('trait.bounds'); }
                if(entity.has( 'trait.velocity' )) { vel = entity.get('trait.velocity'); }
        } //init
        
        override function update(dt:Float) {
                var _dir : Float = (Math.random() > 0.5) ? (1):(-1);
                var _rndmAngle : Float = (Math.random() * Math.PI / 2) - 64;
                var _yvel : Float = Math.sin(_rndmAngle) * 5;
                var _xvel : Float = _dir * Math.cos(_rndmAngle) * 5;
                
                if(entity.pos.y < binding.top) { vel.y *= -1; }
                if(entity.pos.y > binding.bottom) { vel.y *= -1; }
                
                if(entity.pos.x < binding.left || entity.pos.x > binding.right) {
                        entity.pos.x = Luxe.screen.w / 2;
                        entity.pos.y = Luxe.screen.h / 2;
                        vel.y = _yvel;
                        vel.x = _xvel;
                }
        } //update
        
} //BallBindingSystem