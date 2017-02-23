package trait;

import luxe.Component;
import luxe.collision.shapes.Shape;
import luxe.collision.shapes.Circle;
import luxe.collision.shapes.Polygon;
import luxe.collision.data.ShapeCollision;
import luxe.collision.Collision;
import luxe.Entity;
import luxe.options.ComponentOptions;

class HitboxII extends Component
{
        public var shape        : Polygon;
        public var against      : String;
        public var hit          : Bool = false;
        public var coldata      : ShapeCollision;
        
        var arr                 : Array<Entity>;
        var otherHitbox         : HitboxII;
        
        override public function new(_ops:HitboxOptions) {
                super(_ops);
                
                against = (_ops.against != null) ? _ops.against : '';
                shape   = _ops.shape;
        } //new
        
        override function init() {
                arr = new Array<Entity>();
                entity.events.listen('hitbox.hit',function(_) {
                        gotHit();
                });
        } //init
        
        override function update(dt:Float) {
                shape.position = entity.pos;
                hit = false;
                
                if(hit) return;
                
                arr = new Array<Entity>();
                arr = Luxe.scene.get_named_like(against,arr);
                
                for(t in arr) {
                        if(!t.has( 'hitbox' )) continue;
                        
                        otherHitbox = cast(t.get( 'hitbox' ),HitboxII);
                        coldata = Collision.shapeWithShape(shape,otherHitbox.shape);
                        
                        if(coldata != null) {
                                if(otherHitbox.hit) continue;
                                
                                gotHit();
                                otherHitbox.entity.events.fire('hitbox.hit');
                        }
                }
        } //update
        
        function gotHit() {
                hit = true;
        } //gotHit

} //HitboxII

typedef HitboxOptions = {
        > ComponentOptions,
        
        @:optional var against  : String;
        var shape               : Polygon;
} //HitboxOptions