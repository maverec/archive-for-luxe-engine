package system;

import luxe.Component;
import luxe.Input;
import trait.Velocity;
import trait.InputKeys;

class InputMotionSys extends Component
{
        public var vel          : Velocity;
        public var key          : InputKeys;
        
        public function new() {
                super({ name : 'sys.input.motion' });
        } //new
        
        override function init() {
                if(entity.has( 'velocity' )) vel = entity.get('velocity');
                if(entity.has( 'input' )) key = entity.get('input');
        } //init
        
        override function update(dt:Float) {
                if(Luxe.input.keydown( key.up )) entity.pos.y -= vel.y;
                if(Luxe.input.keydown( key.down )) entity.pos.y += vel.y;
                if(Luxe.input.keydown( key.left )) entity.pos.x -= vel.x;
                if(Luxe.input.keydown( key.right )) entity.pos.x += vel.x;
        } //update

} //InputMotionSys