package traits;

import luxe.Input;

class KeyInput extends luxe.Component
{
        public var down : Int;
        public var up : Int;
        
        public function new(?down:Int, ?up:Int) {
                super({ name : 'trait.input.key' });
                
                this.down = down;
                this.up = up;
                
                // if(down != null) { this.down = down; }
                // else { this.down = Key.down; }
                // if(up != null) { this.up = up; }
                // else { this.up = Key.up; }
        } //new
        
} //Input