package system;

import luxe.Component;
import trait.Bounds;

class BindSys extends Component
{
        public var bnds         : Bounds;
        
        public function new() {
                super({ name : 'sys.binding' });
        } //new
        
        override function init() {
                if(entity.has( 'bounds' )) bnds = entity.get('bounds');
        } //init
        
        override function update(dt:Float) {
                if(entity.pos.x < bnds.xL) entity.pos.x = bnds.xL;
                if(entity.pos.x > bnds.xR) entity.pos.x = bnds.xR;
                if(entity.pos.y < bnds.yT) entity.pos.y = bnds.yT;
                if(entity.pos.y > bnds.yB) entity.pos.y = bnds.yB;
        } //update

} //BindSys