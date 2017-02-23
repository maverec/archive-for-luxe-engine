package traits;

import luxe.collision.shapes.Polygon;

// Assigning a value for the width and height of a collision hitbox. The actual
//      hitbox won't be created until values are used in a collision system.
class Hitbox extends luxe.Component
{
        public var w : Float;
        public var h : Float;
        
        public function new(?w:Float, ?h:Float) {
                super({ name : 'trait.hitbox' });
                
                this.w = w;
                this.h = h;
        } //new
        
} //Hitbox