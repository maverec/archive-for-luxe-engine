package traits ;


class Velocity extends luxe.Component
{
        public var x : Float;
        public var y : Float;
        
        public function new(?x:Float, ?y:Float) {
                super({ name : 'trait.velocity' });
                
                this.x = x;
                this.y = y;
        } //new
        
} //Velocity