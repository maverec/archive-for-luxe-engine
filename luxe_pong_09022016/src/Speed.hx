package ;

import luxe.Component;

class Speed extends Component
{
        public var x : Float;
        public var y : Float;
        
        public function new(speed_x:Float, speed_y:Float) {
                super({ name : 'component.speed' });
                
                this.x = speed_x;
                this.y = speed_y;
        } //new
        
} //Speed