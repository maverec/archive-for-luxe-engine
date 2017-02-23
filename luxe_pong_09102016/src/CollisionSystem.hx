package ;

import luxe.collision.Collision;
import luxe.collision.shapes.Polygon;
import luxe.Sprite;
import traits.Hitbox;
import traits.Velocity;

// A collision checking system. Pretty self-explanatory!
class CollisionSystem extends luxe.Component
{
        public var setHitboxA : Hitbox;
        public var setHitboxB : Hitbox;
        
        public var gothit : Bool;
        
        public var vel : Velocity;
        
        public var hitboxA : Polygon;
        public var hitboxB : Polygon;
        
        // sprite to collide with
        public var collidewith : Sprite;
        
        public function new(collidewith:Sprite) {
                super({ name : 'system.collision' });
                
                this.collidewith = collidewith;
        } //new
        
        override function init() {
                gothit = false;
                
                if(entity.has( 'trait.hitbox' )) { setHitboxA = entity.get('trait.hitbox'); }
                if(collidewith.has( 'trait.hitbox' )) { setHitboxB = collidewith.get('trait.hitbox'); }
                if(entity.has( 'trait.velocity' )) { vel = entity.get('trait.velocity'); }
        } //init
        
        override function update(dt:Float) {
                // generating the collision shapes for each sprite
                hitboxA = Polygon.rectangle(entity.pos.x, entity.pos.y, setHitboxA.w, setHitboxA.h);
                hitboxB = Polygon.rectangle(collidewith.pos.x, collidewith.pos.y, setHitboxB.w, setHitboxB.h);
                
                var _dir : Float = (Math.random() > 0.5) ? (1):(-1);
                var _rndmAngle : Float = (Math.random() * Math.PI / 2) - 64;
                var _yvel : Float = Math.sin(_rndmAngle) * 5;
                var _xvel : Float = _dir * Math.cos(_rndmAngle) * 5;
                
                // collision checking
                if(Collision.shapeWithShape(hitboxA, hitboxB) != null) { gothit = true; }
                
                // if collision returns true, then adjust the position of the ball(entity in this case)
                if(gothit) {
                        // the next two lines are to make sure that the ball
                        //      bounces in the exact opposite direction on the x
                        //      axis. Not using 'Math.abs()' makes the ball
                        //      jitter when contact is made with a paddle
                        if(entity.pos.x < Luxe.screen.w / 2) { vel.x = Math.abs(_xvel); }
                        if(entity.pos.x > Luxe.screen.w / 2) { vel.x = -Math.abs(_xvel); }
                        vel.y = _yvel;
                        gothit = false;
                }
        } //update
        
} //CollisionSystem