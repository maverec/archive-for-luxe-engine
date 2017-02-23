package ;

import luxe.Input;
import luxe.Sprite;
import luxe.States;
import luxe.Text;
import luxe.Vector;
import traits.*;

// NOTE (AND A REALLY BIG ONE)
//      Will have to figure out a way to set default values for all traits, to
//      reduce errors from null arguments, but default values that only occur
//      when an argument is absent. The current attempt didn't do this and
//      overwrote all user-appointed arguments
// NOTE completed and refactored 09132016
class Play extends State
{
        public function new() {
                super({ name : 'state.play' });
        } //new
        
        var _ball : Sprite;
        var _paddleA : Sprite;
        var _paddleB : Sprite;
        
        var _dir : Int;
        var _rndmAngle : Float;
        var _xvel : Float;
        var _yvel : Float;
        
        // Score UI
        var _playerScr : Int;
        var _aiScr : Int;
        var _scoreboard : Text;
        
        override function init() {
                _dir = (Math.random() > 0.5) ? (1):(-1);
                _rndmAngle = (Math.random() * Math.PI / 2) - 45;
                _yvel = Math.sin(_rndmAngle) * 5;
                _xvel = _dir * Math.cos(_rndmAngle) * 5;
                
                _playerScr = 0;
                _aiScr = 0;
                _scoreboard = new Text({
                        text : "0 : 0",
                        pos : new Vector(Luxe.screen.w / 2, Luxe.screen.h / 6),
                        point_size : 30
                });
                
                _ball = new Sprite({
                        name : 'entity.ball',
                        pos : Luxe.screen.mid,
                        size : new Vector(CStd.TILE, CStd.TILE),
                });
                _paddleA = new Sprite({
                        name : 'entity.paddle.a',
                        pos : new Vector(CStd.TILE, Luxe.screen.h / 2),
                        size : new Vector(CStd.TILE, CStd.TILE * 4)
                });
                _paddleB = new Sprite({
                        name : 'entity.paddle.b',
                        pos : new Vector(Luxe.screen.w - CStd.TILE, Luxe.screen.h / 2),
                        size : new Vector(CStd.TILE, CStd.TILE * 4)
                });
                
                // NOTE contemplating creating a 'EntityGenerator' class, to
                //      tidy this up a bit
                _paddleA.add(new Velocity( 5,5 ));
                _paddleA.add(new KeyInput( Key.key_s, Key.key_w ));
                _paddleA.add(new MoveSystem( ));
                _paddleA.add(new Bounds( _paddleA.size.y / 2, Luxe.screen.h - _paddleA.size.y / 2, 0, 0 ));
                _paddleA.add(new BindToScreenSystem( ));
                _paddleA.add(new Hitbox( CStd.TILE, CStd.TILE * 4));
                
                _paddleB.add(new Velocity( 5,5 ));
                _paddleB.add(new Bounds( _paddleB.size.y / 2, Luxe.screen.h - _paddleB.size.y / 2, 0, 0 ));
                _paddleB.add(new BindToScreenSystem( ));
                _paddleB.add(new Hitbox( CStd.TILE, CStd.TILE * 4 ));
                _paddleB.add(new AISystem( _ball ));
                
                _ball.add(new Velocity( _xvel, _yvel ));
                _ball.add(new Bounds( _ball.size.y / 2, Luxe.screen.h - _ball.size.y / 2, 0, Luxe.screen.w ));
                _ball.add(new BallBindingSystem( ));
                _ball.add(new BallMovingSystem( ));
                _ball.add(new Hitbox( CStd.TILE, CStd.TILE ));
        } //init
        
        override function update(dt:Float) {
                // creating the score ui for the game and changing the score
                //      when needed
                _scoreboard.text = _playerScr + " : " + _aiScr;
                
                if(_ball.pos.x < 0) {
                        _aiScr++;
                }
                if(_ball.pos.x > Luxe.screen.w) {
                        _playerScr++;
                }
                
                // different 'CollisionSystem's to use depending on the ball's
                //      position. Have to do this, to make sure ball bounces off
                //      both paddles
                // NOTE will have to expand and fix collision system later on,
                //      to work with multiple entities without positioning being
                //      relevant like it is here
                if(_ball.pos.x < Luxe.screen.w / 2) {
                        _ball.add(new CollisionSystem( _paddleA ));
                }
                if(_ball.pos.x > Luxe.screen.w / 2) {
                        _ball.add(new CollisionSystem( _paddleB ));
                }
        } //update
        
} //Play