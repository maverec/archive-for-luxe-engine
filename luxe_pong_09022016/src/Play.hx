package ;

import luxe.Input;
import luxe.collision.shapes.Polygon;
import luxe.Rectangle;
import luxe.States;
import luxe.Sprite;
import luxe.Vector;

class Play extends State
{
        public function new() {
                super({ name : 'state.play' });
        } //new
        
        public static inline var TILE_SIZE : Int = 16;
        public static inline var GAME_WIDTH : Int = 640;
        public static inline var GAME_HEIGHT : Int = 480;
        
        private var _ball : Sprite;
        private var _paddleA : Sprite;
        private var _paddleB : Sprite;
        
        var testhitbox = new Rectangle(0,0,TILE_SIZE, TILE_SIZE);
        var testhitbox2 = new Rectangle(0,0,16,64);
        var hitbox1 : Polygon;
        var hitbox2 : Polygon;
        var _direction : Int;
        var _randomAngle : Float;
        var _yvelocity : Float;
        var _xvelocity : Float;
        
        override function init() {
                _direction = (Math.random() > 0.5) ? (1):(-1);
                _randomAngle = (Math.random() * Math.PI / 2) - 45;
                _yvelocity = Math.sin(_randomAngle) * 3;
                _xvelocity = _direction * Math.cos(_randomAngle) * 3;
                                
                _ball = new Sprite({
                        name : 'entity.ball',
                        size : new Vector(TILE_SIZE,TILE_SIZE),
                        pos : Luxe.screen.mid
                });
                
                _paddleA = new Sprite({
                        name : 'entity.paddle.a',
                        size : new Vector(TILE_SIZE,TILE_SIZE * 4),
                        pos : new Vector(0 + TILE_SIZE,GAME_HEIGHT / 2),
                });
                
                _paddleB = new Sprite({
                        name : 'entity.paddle.b',
                        size : new Vector(TILE_SIZE,TILE_SIZE * 4),
                        pos : new Vector(GAME_WIDTH - TILE_SIZE,GAME_HEIGHT / 2)
                });
                                
                _ball.add(new Speed( _xvelocity,_yvelocity ));
                _ball.add(new BallMovingSystem( ));
                _ball.add(new BallHitsSideSystem( ));
                _ball.add(new BounceSystem( ));
                // _ball.add(new CollidesWith( _paddleA ));
                // _ball.add(new CollisionSystem( ));
                // _ball.add(new CollidesWith( _paddleB ));
                // _ball.add(new Hitbox( testhitbox ));
                // _ball.add(new CollisionCheck( _ball, _paddleA ));
                // _ball.add(new Hitbox( Polygon.square(_ball.pos.x, _ball.pos.y, TILE_SIZE) ));
                // _ball.add(new CollisionChecking( _paddleA ));
                
                _paddleA.add(new Speed( 0,5 ));
                _paddleA.add(new InputMoveSystem( Key.up, Key.down ));
                _paddleA.add(new InputMoveSystem( Key.key_w, Key.key_s ));
                _paddleA.add(new Bounds( _paddleA.origin.y,GAME_HEIGHT - _paddleA.origin.y,0,0 ));
                _paddleA.add(new BindToScreenSystem( ));
                // _paddleA.add(new Hitbox( Polygon.rectangle(_paddleA.pos.x, _paddleA.pos.y,16,64) ));      
                
        } //init
        
        override function update(dt:Float) {
                hitbox1 = Polygon.square(_ball.pos.x,_ball.pos.y,TILE_SIZE);
                hitbox2 = Polygon.rectangle(_paddleA.pos.x,_paddleA.pos.y,16,64); 
                
                if(luxe.collision.Collision.shapeWithShape( hitbox1, hitbox2 ) != null) {
                        var test = new luxe.Text({
                                text : 'WORKING',
                                pos : new Vector(100,100)
                        });
                        _xvelocity *= -1;
                }
        } //update
        
} //Play