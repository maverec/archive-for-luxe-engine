package ;

import traits.Velocity;

// Ball movement, on both the Y and X axis
class BallMovingSystem extends luxe.Component
{
        public var vel : Velocity;
        
        public function new() {
                super({ name : 'system.move.ball' });
        } //new
        
        override function init() {
                if(entity.has( 'trait.velocity' )) { vel = entity.get('trait.velocity'); }
        } //init
        
        override function update(dt:Float) {
                entity.pos.y += vel.y;
                entity.pos.x += vel.x;
        } //update
        
} //BallMovingSystem