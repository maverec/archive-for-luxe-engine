package ;

import luxe.Color;
import luxe.Input;
import luxe.States;
import luxe.Vector;

import traits.Bounds;
import traits.KeyInput;
import traits.Velocity;

class Play extends State
{
        public function new() {
                super({ name : 'state.play' });
        } //new
        
        var _blueship   : CtSprite;
        
        override function init() {
                _blueship = new CtSprite({
                        name    : 'entity.ship.blue',
                        hp      : 5,
                        pos     : new Vector(Luxe.screen.w/2,Luxe.screen.h*9/10),
                        size    : new Vector(48,32),
                        color   : new Color().rgb(0x0000FF),
                        hitbox  : new Vector(48,32)
                });
                _blueship.add(new Velocity( 5,5 ));
                _blueship.add(new KeyInput({
                        down    : Key.key_s,
                        up      : Key.key_w,
                        left    : Key.key_a,
                        right   : Key.key_d
                }));
                _blueship.add(new InputMotionSystem( ));
                _blueship.add(new Bounds({
                        north   : 16,
                        south   : Luxe.screen.h - 16,
                        west    : 24,
                        east    : Luxe.screen.w - 24
                }));
                _blueship.add(new BindToScreenSystem( ));
        } //init
        
        override function update(dt:Float) {
                
        } //update

} //Play