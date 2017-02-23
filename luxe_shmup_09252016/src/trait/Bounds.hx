package trait;

import luxe.Component;

class Bounds extends Component
{
        public var xL   : Float;
        public var xR   : Float;
        public var yT   : Float;
        public var yB   : Float;
        
        public function new(_ops:BoundsOptions) {
                super({ name : 'bounds' });
                this.xL = _ops.xL;
                this.xR = _ops.xR;
                this.yT = _ops.yT;
                this.yB = _ops.yB; 
        } //new

} //Bounds

typedef BoundsOptions = {
        @:optional var xL       : Float;
        @:optional var xR       : Float;
        @:optional var yT       : Float;
        @:optional var yB       : Float;
} //BoundsOptions