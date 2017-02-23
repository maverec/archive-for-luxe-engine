package trait;

import luxe.Component;

class Velocity extends Component
{
        public var x    : Float;
        public var y    : Float;
        
        public function new(x:Float,y:Float) {
                super({ name : 'velocity' });
                
                this.x = x;
                this.y = y;
        } //new

} //Velocity