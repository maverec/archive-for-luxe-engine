
package ;


class KillBoundsS extends luxe.Component
{
	var _bounds : BoundsD;
	
	
	override function init() : Void {
		if ( entity.has('data.bounds') ) _bounds = entity.get('data.bounds');
		
	} //init
	
	override function update( dt:Float ) : Void {
		if ( entity.pos.y < _bounds.ytop 
			|| entity.pos.y > _bounds.ybot 
			|| entity.pos.x < _bounds.xleft 
			|| entity.pos.x > _bounds.xright ) {
				
			entity.destroy( true );
		}
		
	} //update
	
} //KillBoundsSystem