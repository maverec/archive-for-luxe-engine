package ;

import traits.Velocity;

class MotionSystem extends luxe.Component
{
        public var vel : Velocity;
        
        public function new() {
                super({ name : 'system.motion' });
        } //new
        
        override function init() {
                if(entity.has( 'trait.velocity' )) { vel = entity.get('trait.velocity'); }
        } //init
        
        override function update(dt:Float) {
                entity.pos.y += vel.y;
        } //update

} //MotionSystem