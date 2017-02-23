package ;

import traits.Bounds;

// Binding an entity to the screen, to make sure it doesn't go off screen
class BindToScreenSystem extends luxe.Component
{
        public var binding : Bounds;
        
        public function new() {
                super({ name : 'system.bindtoscreen' });
        } //new
        
        override function init() {
                if(entity.has( 'trait.bounds' )) { binding = entity.get('trait.bounds'); }
        } //init
        
        override function update(dt:Float) {
                if(entity.pos.y < binding.top) { entity.pos.y = binding.top; }
                if(entity.pos.y > binding.bottom) { entity.pos.y = binding.bottom; }
        } //update
        
} //BindToScreenSystem