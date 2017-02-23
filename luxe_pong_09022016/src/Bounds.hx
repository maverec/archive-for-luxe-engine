package ;


class Bounds extends luxe.Component
{
        public var top : Float;
        public var bottom : Float;
        public var left : Float;
        public var right : Float;
        
        public function new(top:Float, bottom:Float, left:Float, right:Float) {
                super({ name : 'component.bounds' });
                
                this.top = top;
                this.bottom = bottom;
                this.left = left;
                this.right = right;
        } //new
        
} //Bounds