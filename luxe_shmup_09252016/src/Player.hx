package ;

import luxe.Input;
import luxe.Sprite;
import luxe.collision.shapes.Shape;
import luxe.collision.shapes.Polygon;
import trait.Velocity;
import trait.InputKeys;
import trait.Bounds;
// import trait.Hitbox;
import system.InputMotionSys;
import system.BindSys;

class Player extends Sprite
{
        public var hp           : Float;
        
        override function init() {
                hp = 5;
                
                add(new Velocity( 7,7 ));
                add(new InputKeys({
                        up      : Key.key_w,
                        down    : Key.key_s,
                        left    : Key.key_a,
                        right   : Key.key_d
                }));
                add(new InputMotionSys());
                // add(new Hitbox({
                //         against : 'enemy',
                //         shape   : Polygon.rectangle(pos.x,pos.y,size.x,size.y)
                // }));
        } //init
        
        override function update(dt:Float) {                
                if(this.hp <= 0) { destroy(true); }
                
                add(new Bounds({
                        xL : this.size.x/2,
                        xR : Luxe.screen.w - this.size.x/2,
                        yT : this.size.y/2,
                        yB : Luxe.screen.h - this.size.y/2
                }));
                add(new BindSys());
        } //update

} //Player