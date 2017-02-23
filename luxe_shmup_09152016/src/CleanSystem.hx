package ;

import traits.Bounds;

class CleanSystem extends luxe.Component
{
        public var bnds : Bounds;
        
        public function new() {
                super({ name : 'system.clean' });
        } //new
        
        override function init() {
                if(entity.has( 'trait.bounds' )) bnds = entity.get('trait.bounds');
        } //init
        
        override function update(dt:Float) {
                if(bnds.top != null) {
                        if(entity.pos.y < bnds.top) { entity.destroy(true); }
                }
                if(bnds.bottom != null) {
                        if(entity.pos.y > bnds.bottom) { entity.destroy(true); }
                }
        } //update
        
} //CleanSystem