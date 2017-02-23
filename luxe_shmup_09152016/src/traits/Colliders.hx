package traits;

import luxe.collision.shapes.Polygon;
import luxe.collision.shapes.Shape;

class Colliders extends luxe.Component
{
        public var groupA       : Array<Shape>;
        public var groupB       : Array<Shape>;
        
        public function new(arrayA:Array<Shape>,arrayB:Array<Shape>) {
                super({ name : 'trait.colliders' });
                
                this.groupA = arrayA;
                this.groupB = arrayB;
        } //new

} //Collisders