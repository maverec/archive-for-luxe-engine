package ;

import luxe.Sprite;
import luxe.collision.Collision;
import luxe.collision.shapes.Polygon;
import traits.Colliders;
import traits.Hitbox;

class CollisionSystem extends luxe.Component
{
        public var setbox       : Hitbox;
        
        public var hitbox       : Polygon;
        public var cols         : Colliders;
        
        public function new() {
                super({ name : 'system.collision' });                
        } //new
        
        override function init() {
                if(entity.has( 'trait.hitbox' )) { setbox = entity.get('trait.hitbox'); }
                if(entity.has( 'trait.colliders' )) { cols = entity.get('trait.colliders'); }
        } //init
        
        override function update(dt:Float) {
                hitbox = Polygon.rectangle(entity.pos.x,entity.pos.y,setbox.w,setbox.h);
                
                cols.groupA.push(hitbox);
                
                if(Collision.shapeWithShapes( hitbox,cols.groupB ) != null) {
                        // entity.destroy(true);
                }
        } //update

} //CollisionSystem