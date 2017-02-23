package ;

import luxe.Sprite;

class CollidesWith extends luxe.Component
{
        public var body : Sprite;
        
        public function new(target:Sprite) {
                super({ name : 'component.collidewith' });
                
                this.body = target;
        } //new
        
} //CollidesWith