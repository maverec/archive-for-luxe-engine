package trait;

import luxe.Component;

class InputKeys extends Component
{
        public var up           : Int;
        public var down         : Int;
        public var left         : Int;
        public var right        : Int;
        
        public function new(_ops:KeyboardOptions) {
                super({ name : 'input' });
                this.up         = _ops.up;
                this.down       = _ops.down;
                this.left       = _ops.left;
                this.right      = _ops.right;
        } //new

} //InputKeys

typedef KeyboardOptions = {
        @:optional var up       : Int;
        @:optional var down     : Int;
        @:optional var left     : Int;
        @:optional var right    : Int;
} //KeyboardOptions