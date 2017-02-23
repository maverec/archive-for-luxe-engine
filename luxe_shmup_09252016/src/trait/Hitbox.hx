package trait;

import luxe.Entity;
import luxe.collision.Collision;
import luxe.Component;
import luxe.options.ComponentOptions;
import luxe.collision.shapes.Polygon;

// NOTE pulled from junongx's code on github
//      big thanks to him for making it
class Hitbox extends luxe.Component
{
        public var against      : String;
        public var shape        : Polygon;
        
        override public function new(_ops:HitboxOptions) {
                super(_ops);
                
                against = (_ops.against != null) ? _ops.against : '';
                shape   = _ops.shape;
        } //new
        
        override public function update(dt:Float) {
                this.shape.x = entity.pos.x;
                this.shape.y = entity.pos.y;
                
                if(entity.active && against.length > 0) {
                        var targets = new Array<Entity>();
                        Luxe.scene.get_named_like(against,targets);
                        
                        for(target in targets) {
                                if(target.active && target.has( 'hitbox' )) {
                                        var target_hitbox = target.get('hitbox');
                                        if(Collision.shapeWithShape( shape,target_hitbox.shape ) != null) {
                                                target.events.fire('hit');
                                                entity.events.fire('hit');
                                        }
                                }
                        }
                }
        } //update

} //Hitbox


typedef HitboxOptions = {
        > ComponentOptions,
        
        @:optional var against  : String;
        var shape               : Polygon;
} //HitboxOptions