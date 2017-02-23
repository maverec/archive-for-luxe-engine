package ;

import traits.KeyInput;
import traits.Velocity;

class InputMotionSystem extends luxe.Component
{
        public var vel          : Velocity;
        public var key          : KeyInput;
        
        public function new() {
                super({ name : 'system.input.motion' });
        } //new
        
        override function init() {
                if(entity.has( 'trait.velocity' )) { vel = entity.get('trait.velocity'); }
                if(entity.has( 'trait.input.key' )) { key = entity.get('trait.input.key'); }
        } //init
        
        override function update(dt:Float) {
                if(Luxe.input.keydown( key.down )) { entity.pos.y += vel.y; }
                if(Luxe.input.keydown( key.up )) { entity.pos.y -= vel.y; }
                if(Luxe.input.keydown( key.left )) { entity.pos.x -= vel.x; }
                if(Luxe.input.keydown( key.right )) { entity.pos.x += vel.x; }
        } //update

} //InputMotionSystem