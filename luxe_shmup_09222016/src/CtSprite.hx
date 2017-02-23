package ;

import luxe.collision.shapes.Shape;
import luxe.collision.shapes.Polygon;
import luxe.options.SpriteOptions;
import luxe.Vector;
// import traits.Bounds;

class CtSprite extends luxe.Sprite
{
        public var hp                                   : Int = 1;
        
        @:optional public var hitbox                    : Vector;
        @:optional public var colliderGrp               : Array<Shape>;
        @:optional public var spawnPt                   : Vector;
        // @:optional public var bnds                      : Bounds;
        
        @:optional public var collisionShape            : Shape;
        
        // public function new(_options:CtSpriteOptions) {
        //         if(_options.hp != null) { _options.hp = this.hp; }
        //         if(_options.hitbox != null) { _options.hitbox = this.hitbox; }
        //         if(_options.colliderGroup != null) { _options.colliderGroup = this.colliderGrp; }
        //         if(_options.spawnPoint != null) { _options.spawnPoint = this.spawnPt; }
        //         // if(_options.bounds != null) { _options.bounds = this.bnds; }
        // 
        //         super(_options);
        // } //new
        
        override function init() {
        } //init
        
        override function update(dt:Float) {
                if(this.hp <= 0) { this.destroy(true); }
                if(this.hitbox != null) {
                        collisionShape = Polygon.rectangle(this.pos.x,this.pos.y,hitbox.x,hitbox.y);
                }
                
                if(this.colliderGrp != null && this.hitbox != null) { colliderGrp.push(collisionShape); }
                if(this.spawnPt != null) { this.pos = spawnPt; }
                // if(this.bnds != null) {
                //         if(this.pos.x < bnds.left) { this.pos.x = bnds.left; }
                //         if(this.pos.x > bnds.right) { this.pos.x = bnds.right; }
                //         if(this.pos.y < bnds.top) { this.pos.y = bnds.top; }
                //         if(this.pos.y > bnds.bottom) { this.pos.y = bnds.bottom; }
                // } else {
                //         if(this.pos.x < 0) { this.pos.x = 0; }
                //         if(this.pos.x > Luxe.screen.w) { this.pos.x = Luxe.screen.w; }
                //         if(this.pos.y < 0) { this.pos.y = 0; }
                //         if(this.pos.y > Luxe.screen.h) { this.pos.y = Luxe.screen.h; }
                // }
        } //update

} //CtSprite


typedef CtSpriteOptions = {
        >SpriteOptions,
        
        @:optional var hp               : Int;
        @:optional var hitbox           : Vector;
        @:optional var colliderGroup    : Array<Shape>;
        @:optional var spawnPoint       : Vector;
        // @:optional var bounds           : Bounds;
} //CtSpriteOptions