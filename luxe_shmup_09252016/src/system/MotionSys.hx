package system;

import luxe.Component;
import trait.Velocity;

class MotionSys extends Component
{
        public var vel          : Velocity;
        
        public function new() {
                super({ name : 'sys.motion' });
        } //new
        
        override function init() {
                if(entity.has( 'velocity' )) vel = entity.get('velocity');
        } //init
        
        override function update(dt:Float) {
                entity.pos.x += vel.x;
                entity.pos.y += vel.y;
        } //update

} //MotionSys