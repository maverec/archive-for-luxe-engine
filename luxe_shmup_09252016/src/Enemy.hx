package ;

import luxe.Sprite;
import luxe.collision.shapes.Shape;
import luxe.collision.shapes.Polygon;
import trait.Velocity;
import trait.Hitbox;
// import trait.HitboxII;
// import trait.Health;
// import system.CollisionSys;
import trait.Bounds;
import system.MotionSys;
import system.DisposalSys;

class Enemy extends Sprite
{
        public var hp           : Float;
        
        override function init() {
                hp = 3;
                
                add(new Velocity( 0,15 ));
                add(new MotionSys());
                add(new Hitbox({
                        name    : 'hitbox',
                        against : 'player',
                        shape   : Polygon.rectangle(pos.x,pos.y,size.x,size.y)
                }));
                        
                this.events.listen('hit',function(_){
                        // var workstring = new luxe.Text({
                        //         text : 'ENEMY HIT',
                        //         pos  : new luxe.Vector(pos.x,pos.y)
                        // });
                        destroy(true);
                });
                // add(new HitboxII({
                //         name    : 'hitbox',
                //         shape   : Polygon.rectangle(pos.x,pos.y,size.x,size.y),
                //         against : 'player'
                // }));
                // add(new Health( 3 ));
                // add(new CollisionSys( ));
        } //init
        
        override function update(dt:Float) {                
                // if(this.hp <= 0) { destroy(true); }
                
                // add(new Bounds({
                //         // xR : -50,
                //         // xL : Luxe.screen.w + 50,
                //         yT : -200,
                //         yB : Luxe.screen.h + 50
                // }));
                // add(new DisposalSys());
        } //update

} //Enemy