package ;

import traits.Velocity;
import traits.KeyInput;

// Moving the paddle with key presses
class MoveSystem extends luxe.Component
{
        public var vel : Velocity;
        public var input : KeyInput;
        
        public function new() {
                super({ name : 'system.input.move' });
        } //new
        
        override function init() {
                if(entity.has( 'trait.velocity' )) { vel = entity.get('trait.velocity'); }
                if(entity.has( 'trait.input.key' )) { input = entity.get('trait.input.key'); }
        } //init
        
        override function update(dt:Float) {
                if(Luxe.input.keydown( input.down )) { entity.pos.y += vel.y; }
                if(Luxe.input.keydown( input.up )) { entity.pos.y -= vel.y; }
        }//update
        
} //MoveSystem