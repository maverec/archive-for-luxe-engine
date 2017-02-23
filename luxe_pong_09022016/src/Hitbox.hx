package ;

import luxe.Rectangle;

class Hitbox extends luxe.Component
{
        public var hitbox : luxe.collision.shapes.Shape;
        public var gothit : Bool;
        
        public function new(hitbox:luxe.collision.shapes.Shape, ?gothit:Bool) {
                super({ name : 'component.hitbox' });
                
                this.hitbox = hitbox;
                if(gothit) {
                        this.gothit = gothit;
                } else {
                        this.gothit = false;
                }
        } //new
        
} //Hitbox