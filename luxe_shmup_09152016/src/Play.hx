package ;

import luxe.collision.shapes.Polygon;
import luxe.collision.shapes.Shape;
import luxe.Color;
import luxe.Entity;
import luxe.Input;
import luxe.Sprite;
import luxe.States;
import luxe.Vector;

import traits.*;

class Play extends State
{
        public function new() {
                super({ name : 'state.play' });
        } //new
        
        public var player       : Sprite;
        public var enemyGen     : Entity;
        
        public var enemies      : Array<Shape>;
        public var bullets      : Array<Shape>;
        
        override function init() {
                player = new Sprite({
                        name    : 'entity.player',
                        size    : new Vector(CStd.TILE * 3, CStd.TILE * 2),
                        pos     : new Vector(Luxe.screen.w / 2, Luxe.screen.h * 0.90),
                        color   : new Color().rgb(0x0000FF)
                });
                
                player.add(new Velocity( 10,10 ));
                player.add(new KeyInput({
                        down    : Key.key_s,
                        up      : Key.key_w,
                        left    : Key.key_a,
                        right   : Key.key_d,
                        shoot   : Key.space
                }));
                player.add(new MoveSystem( ));
                player.add(new Bounds({
                        north   : CStd.TILE,
                        south   : Luxe.screen.h - CStd.TILE,
                        west    : CStd.TILE * 3 /2,
                        east    : Luxe.screen.w - CStd.TILE * 3 / 2
                }));
                player.add(new BindToScreenSystem( ));
                player.add(new ShootSystem( ));
                player.add(new Colliders( bullets,enemies ));
                // player.add(new CollisionSystem( enemies ));
                
                enemyGen = new Entity({
                        name    : 'entity.enemy',
                        pos     : new Vector(Luxe.screen.w / 2,-50)
                });
                enemyGen.add(new EnemyGenSystem( ));
                // enemyGen.add(new Colliders( enemies ));
        } //init

} //Play