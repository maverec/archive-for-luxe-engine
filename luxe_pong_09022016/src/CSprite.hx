package ;

import luxe.Rectangle;
import luxe.options.SpriteOptions;

class CSprite extends luxe.Sprite
{
        public var hitbox : Rectangle;
        public var gothit : Bool = false;
        
        public function new(_options:CSpriteOptions) {
                super(_options);
                
                if(_options.hitbox != null) {
                        _options.hitbox = this.hitbox;
                } else {
                        this.hitbox = new Rectangle(0,0,0,0);
                }
        } //new
} //CSprite


typedef CSpriteOptions = {
        > SpriteOptions,
        @:optional var hitbox : Rectangle;
} //CSpriteOptions