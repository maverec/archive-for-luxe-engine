package ;

import luxe.Sprite;
import luxe.Vector;
import traits.Bounds;
import traits.Velocity;

class EnemyGenSystem extends luxe.Component
{
        // public var bnds         : Bounds;
        public var cooldown     : Float;
        public var maxcd        : Float;
        public var rngposx      : Float;
        
        public function new() {
                super({ name : 'system.generator.enemy' });
        } //new
        
        override function init() {
                cooldown = 0.15;
                maxcd = 0.50;
                // if(entity.has( 'trait.bounds' )) { bnds = entity.get('trait.bounds'); }
        } //init
        
        override function update(dt:Float) {
                rngposx = Math.random() * (Luxe.screen.w * 8 / 10);
                
                if(cooldown < 0) { cooldown = 0; }
                if(cooldown > 0) { cooldown -= dt; }
                if(cooldown == 0) {
                        cooldown = maxcd;
                        var _e = new Sprite({
                                name            : 'entity.enemy',
                                name_unique     : true,
                                pos             : new Vector(rngposx,entity.pos.y),
                                size            : new Vector(CStd.TILE * 3, CStd.TILE * 2)
                        });
                        
                        _e.add(new Velocity( 0,Math.random() * 15 ));
                        _e.add(new MotionSystem( ));
                        _e.add(new Bounds({ south : Luxe.screen.h + 50 }));
                        _e.add(new CleanSystem( ));
                }
        } //update

} //EnemyGenSystem