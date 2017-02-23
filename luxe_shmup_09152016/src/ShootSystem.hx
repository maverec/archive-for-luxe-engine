package ;

import luxe.collision.Collision;
import luxe.collision.shapes.Polygon;
import luxe.Sprite;
import luxe.Vector;

import traits.Bounds;
import traits.Colliders;
import traits.Hitbox;
import traits.KeyInput;
import traits.Velocity;

class ShootSystem extends luxe.Component
{
        public var colbodies    : Colliders;
        public var input        : KeyInput;
        
        public var cooldown     : Float;
        public var maxcd        : Float;
        public var alternate    : Bool;
        
        public function new() {
                super({ name : 'system.firebullets' });
        } //new
        
        override function init() {
                cooldown = 0;
                maxcd = 0.15;
                alternate = true;
                if(entity.has( 'trait.input.key' )) { input = entity.get('trait.input.key'); }
                if(entity.has( 'trait.colliders' )) { colbodies = entity.get('trait.colliders'); }
        } //init
        
        override function update(dt:Float) {
                if(Luxe.input.keydown( input.shoot )) {
                        if(cooldown < 0) { cooldown = 0; }
                        if(cooldown > 0) { cooldown -= dt; }
                        if(cooldown == 0) {
                                cooldown = maxcd;
                                var _b = new Bullet();
                                _b.pos.x = entity.pos.x;
                                _b.pos.y = entity.pos.y;
                                // if(alternate) { _b.pos.x =  }
                                // else { bulletGen(16); }
                                // if(alternate) { bulletGen(-16); }
                                // else { bulletGen(16); }
                                // alternate = !alternate;
                        }
                }
        } //update
        
        // function bulletGen(offset:Int) {
        //         var _b = new Sprite({
        //                 name            : 'entity.bullet',
        //                 name_unique     : true,
        //                 pos             : new Vector(entity.pos.x + offset,entity.pos.y - CStd.TILE),
        //                 size            : new Vector(4,8)
        //         });
        //         
        //         _b.add(new Velocity( -18,-18 ));
        //         _b.add(new MotionSystem( ));
        //         _b.add(new Bounds({ north : -50 }));
        //         _b.add(new CleanSystem( ));
        //         // _b.add(new Hitbox( 4,8 ));
        //         // _b.add(new Colliders( colbodies.groupA,colbodies.groupB ));
        //         // _b.add(new CollisionSystem( ));
        //         var hitbox = Polygon.rectangle(_b.pos.x,_b.pos.y,4,8);
        //         
        //         if(Collision.shapeWithShapes( hitbox,colbodies.groupB ) != null) {
        //                 _b.destroy(true);
        //         }
        // } //bulletGen
        
} //ShootSystem