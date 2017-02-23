package traits ;


class Velocity extends luxe.Component
{
        public var x : Float;
        public var y : Float;
        
        public function new(?x:Float, ?y:Float) {
                super({ name : 'trait.velocity' });
                
                this.x = x;
                this.y = y;
                
                // if(x != null) { this.x = x; } 
                // else { this.x = 1; }
                // if(y != null) { this.y = y; } 
                // else { this.y = 1; }
        } //new
        
} //Velocity