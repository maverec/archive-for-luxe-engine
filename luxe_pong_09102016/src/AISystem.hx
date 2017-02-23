package ;

import luxe.Sprite;

// An AI system for a paddle. Follows a target.
class AISystem extends luxe.Component
{
        public var target : Sprite;
        
        public function new(target:Sprite) {
                super({ name : 'system.ai' });
                
                this.target = target;
        } //new
        
        override function update(dt:Float) {
                // setting the paddle to follow the ball when in a certain
                //      position
                // NOTE remember, default positioning is from the origin of an
                //      entity
                if(target.pos.x > Luxe.screen.w * ( 3 / 4 ) && target.pos.y > entity.pos.y + 16) {
                        entity.pos.y += 5;
                }
                if(target.pos.x > Luxe.screen.w * ( 3 / 4 ) && target.pos.y < entity.pos.y - 16) {
                        entity.pos.y -= 5;
                }
        } //update
        
} //AISystem