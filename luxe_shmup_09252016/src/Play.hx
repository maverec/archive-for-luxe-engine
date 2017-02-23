package ;

import luxe.Vector;
import luxe.Color;
import luxe.States;
import luxe.Input;
import luxe.collision.Collision;
import luxe.collision.shapes.Shape;
import luxe.collision.shapes.Polygon;

class Play extends State
{
        public function new() {
                super({ name : 'state.play' });
        } //new
        
        var _player             : Player;
        //TESTING
        var _cd                 : Float;
        var _maxcd              : Float;
        var _st                 : Float;
        var _maxst              : Float;

        override function init() {
                _player = new Player({
                        name    : 'player',
                        pos     : new Vector(Luxe.screen.w/2, Luxe.screen.h * 9/10),
                        size    : new Vector(48,24),
                        color   : new Color().rgb(0x0000FF)
                });
                //TESTING
                _cd = 0;
                _maxcd = 0.25;
                _st = 0.15;
                _maxst = Math.random() * 1.25;
        } //init
        
        override function update(dt:Float) {
                //TESTING
                if(Luxe.input.keydown(Key.space)) {
                        if(_cd < 0) _cd = 0;
                        if(_cd > 0) _cd -= dt;
                        if(_cd == 0) {
                                _cd = _maxcd;
                                var _b = new Bullet({
                                        name            : 'player.bullet',
                                        name_unique     : true,
                                        pos             : new Vector(_player.pos.x,_player.pos.y - 12),
                                        size            : new Vector(2,7)
                                });
                        }
                }
                //TESTING
                if(_st <= 0) _st = 0;
                if(_st > 0) _st -= dt;
                if(_st == 0) {
                        _st = _maxst;
                        var _e = new Enemy({
                                name            : 'enemy',
                                name_unique     : true,
                                pos             : new Vector(Math.random() * Luxe.screen.w,-25),
                                size            : new Vector(48,24),
                                color           : new Color().rgb(0xFF0000)
                        });
                }
        } //update

} //Play