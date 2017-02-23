package system;

import luxe.Component;
import trait.HitboxII;
import trait.Health;

class CollisionSys extends luxe.Component
{
        public var hb           : HitboxII;
        public var health       : Health;
        
        override function init() {
                if(entity.has( 'hitbox' )) hb = entity.get('hitbox');
                if(entity.has( 'health' )) health = entity.get('health');
        } //init
        
        override function update(dt:Float) {
                if(hb.hit) {
                        health.hp--;
                }
                
                if(health.hp <= 0) {
                        entity.destroy(true);
                }
        } //update

} //CollisionSys