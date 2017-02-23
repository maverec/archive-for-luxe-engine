package system;

import luxe.Component;
import trait.Bounds;

class DisposalSys extends Component
{
        public var bnds         : Bounds;
        
        public function new() {
                super({ name : 'sys.disposal' });
        } //new
        
        override function init() {
                if(entity.has( 'bounds' )) bnds = entity.get('bounds');
        } //init
        
        override function update(dt:Float) {
                // if(entity.pos.x < bnds.xL || entity.pos.x > bnds.xR
                //         || entity.pos.y < bnds.yT || entity.pos.y > bnds.yB) {
                //         entity.destroy(true);
                // }
                
                if(bnds.xL != null) {
                        if(bnds.xL > entity.pos.x) {
                                entity.destroy(true);
                        }
                }
                if(bnds.xR != null) {
                        if(bnds.xR < entity.pos.x) {
                                entity.destroy(true);
                        }
                }
                if(bnds.yT != null) {
                        if(bnds.yT > entity.pos.x) {
                                entity.destroy(true);
                        }
                }
                if(bnds.yB != null) {
                        if(bnds.yB < entity.pos.x) {
                                entity.destroy(true);
                        }
                }
        } //update

} //DisposalSys