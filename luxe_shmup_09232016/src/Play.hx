package ;

import luxe.States;
import luxe.Sprite;
import luxe.Vector;
import luxe.Color;
import luxe.Input;
import luxe.collision.shapes.Shape;
import luxe.collision.shapes.Polygon;

class Play extends State
{
        public function new() {
                super({ name : 'state.play' });
        } //new
        
        var blueship            : Spritec;
        var bsHitbox            : Shape;
        var velocity            : Vector;
        var firecd              : Float;
        var maxfirecd           : Float;
        var playerPresent       : Bool;
        var spawntimer          : Float;
        var maxst               : Float;
        
        override function init() {
                blueship = new Spritec({
                        name    : 'entity.blueship',
                        pos     : new Vector(Luxe.screen.w/2,Luxe.screen.h * 9/10),
                        size    : new Vector(48,24),
                        color   : new Color().rgb(0x0000FF)
                });
                blueship.hp = 5;
                velocity = new Vector(7,7);
                firecd = 0;
                maxfirecd = 0.15;
                playerPresent = true;
                spawntimer = 0.25;
                maxst = 0.45;
        } //init
        
        override function update(dt:Float) {
                bsHitbox = Polygon.rectangle(blueship.pos.x,blueship.pos.y,blueship.size.x,blueship.size.y);
                
                if(Luxe.input.keydown( Key.key_w )) { blueship.pos.y -= velocity.y; }
                if(Luxe.input.keydown( Key.key_s )) { blueship.pos.y += velocity.y; }
                if(Luxe.input.keydown( Key.key_a )) { blueship.pos.x -= velocity.x; }
                if(Luxe.input.keydown( Key.key_d )) { blueship.pos.x += velocity.x; }
                
                if(blueship.pos.y < blueship.size.y/2) { blueship.pos.y = blueship.size.y/2; }
                if(blueship.pos.y > Luxe.screen.h - blueship.size.y/2) { blueship.pos.y = Luxe.screen.h - blueship.size.y; }
                if(blueship.pos.x < blueship.size.x/2) { blueship.pos.x = blueship.size.x/2; }
                if(blueship.pos.x > Luxe.screen.w - blueship.size.x/2) { blueship.pos.x = Luxe.screen.w - blueship.size.x/2; }
                
                if(Luxe.input.keydown( Key.space )) {
                        if(firecd < 0) { firecd = 0; }
                        if(firecd > 0) { firecd -= dt; }
                        if(firecd == 0) {
                                firecd = maxfirecd;
                                var bullet = new Spritec({
                                        name            : 'entity.bullet',
                                        name_unique     : true,
                                        pos             : new Vector(blueship.pos.x,blueship.pos.y - blueship.size.y),
                                        size            : new Vector(2,7)
                                });
                                bullet.vel = new Vector(0,-12);
                                var bullethitbox = Polygon.rectangle(bullet.pos.x,bullet.pos.y,bullet.size.x,bullet.size.y);
                                
                                if(Collision.shapeWithShapes( bullethitbox,enemies )) != null) {
                                        bullet.hp -= 1;
                                }
                        }
                }
                
                if(playerPresent) {
                        if(spawntimer < 0) spawntimer = 0;
                        if(spawntimer > 0) spawntimer -= dt;
                        if(spawntimer == 0) {
                                spawntimer = maxst;
                                var enemy = new Spritec({
                                        name            : 'entity.enemy',
                                        name_unique     : true,
                                        pos             : new Vector(Math.random() * Luxe.screen.h, -50),
                                        size            : new Vector(48,24),
                                        color           : new Color().rgb(0xFF0000)
                                });
                                enemy.vel = new Vector(0,Math.random() * 15);
                        }
                }
        } //update

} //Play