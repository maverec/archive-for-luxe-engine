package traits;

// NOTE may put arguments into an Option, for easy distinguishing and reading
class Bounds extends luxe.Component
{
        public var top : Float;
        public var bottom : Float;
        public var left : Float;
        public var right : Float;
        
        public function new(?top:Float, ?bottom:Float, ?left:Float, ?right:Float) {
                super({ name : 'trait.bounds' });
                
                this.top = top;
                this.bottom = bottom;
                this.left = left;
                this.right = right;
                
                // if(this.top != null) { this.top = top; }
                // else { this.top = 0; }
                // if(this.bottom != null) { this.bottom = bottom; }
                // else { this.bottom = Luxe.screen.h; }
                // if(this.left != null) { this.left = left; }
                // else { this.left = 0; }
                // if(this.right != null) { this.right = right; }
                // else { this.right = Luxe.screen.w; }
        } //new
        
} //Bounds