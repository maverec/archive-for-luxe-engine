package ;

import luxe.Sprite;
import luxe.collision.Collision;
import luxe.collision.shapes.Shape;
import luxe.collision.shapes.Polygon;
import trait.Velocity;
import trait.Hitbox;
import trait.Bounds;
import system.MotionSys;
import system.DisposalSys;
// import trait.HitboxII;
// import trait.Health;
// import system.CollisionSys;

class Bullet extends Sprite
{
        public var hp           : Int;
        public var hit          : Bool;
        
        override function init() {
                hp = 1;
                
                add(new Velocity( 0,-12 ));
                add(new MotionSys());
                add(new Hitbox({
                        name    : 'hitbox',
                        against : 'enemy',
                        shape   : Polygon.rectangle(pos.x,pos.y,size.x,size.y)
                }));
                // add(new HitboxII({
                //         name    : 'hitbox',
                //         against : 'enemy',
                //         shape   : Polygon.rectangle(pos.x,pos.y,size.x,size.y)
                // }));
                // add(new Health( 1 ));
                // add(new CollisionSys( ));
                this.events.listen('hit',function(_){
                        destroy(true);
                });
        } //init
        
        override function update(dt:Float) {
                
                // add(new Bounds({
                //         xL : -50,
                //         xR : Luxe.screen.w + 50,
                //         yT : -7,
                //         yB : Luxe.screen.h + 50
                // }));
                // add(new DisposalSys());
        } //update
        
        function gotHit() {
                hit = true;
        }
} //Bullet