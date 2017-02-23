package ;

import luxe.Vector;
import traits.*;

class Bullet extends luxe.Sprite
{
        public var hp : Int = 1;
        
        public function new() {
                super({ name : 'entity.bullet', name_unique : true });
        } //new
        
        override function init() {
                this.size = new Vector(4,8);
        } //init
        
        override function update(dt:Float) {
                add(new Velocity( -18,-18 ));
                add(new MotionSystem( ));
                add(new Bounds({ north : -50 }));
                add(new CleanSystem( ));
        } //update

} //Bullet