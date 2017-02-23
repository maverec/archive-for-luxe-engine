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
                this.h =h;
                
                // NOTE the below DOES NOT WORK correctly
                //      causes an unprecedented amount of problems with
                // if(this.w != null) { this.w = w; }
                // else { this.w = CStd.TILE; }
                // if(this.h != null) { this.h = h; }
                // else { this.h = CStd.TILE; }
        } //new
        
} //Hitbox