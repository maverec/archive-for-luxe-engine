package traits;

class Bounds extends luxe.Component
{
        public var top          : Float;
        public var bottom       : Float;
        public var left         : Float;
        public var right        : Float;
        
        public function new(_options:BindingOptions) {
                super({ name : 'trait.bounds' });
                
                this.top = _options.north;
                this.bottom = _options.south;
                this.left = _options.west;
                this.right = _options.east;
        } //new
        
} //Bounds


typedef BindingOptions = {
        @:optional var north    : Float;
        @:optional var south    : Float;
        @:optional var west     : Float;
        @:optional var east     : Float;
} //BindingOptions