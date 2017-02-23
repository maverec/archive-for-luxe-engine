package traits;

import luxe.Input;

class KeyInput extends luxe.Component
{
        public var down         : Int;
        public var up           : Int;
        public var left         : Int;
        public var right        : Int;
        public var shoot        : Int;
        
        public function new(_options:KeyInputOptions) {
                super({ name : 'trait.input.key' });
                
                this.down = _options.down;
                this.up = _options.up;
                this.left = _options.left;
                this.right = _options.right;
                this.shoot = _options.shoot;
        } //new
        
} //Input


typedef KeyInputOptions = {
        @:optional var down     : Int;
        @:optional var up       : Int;
        @:optional var left     : Int;
        @:optional var right    : Int;
        @:optional var shoot    : Int;
} //KeyInputOptions