
package ;


class YBoundsSystem extends luxe.Component
{
	var ytop : Int;
	var ybottom : Int;
	
	
	public function new( ytop:Int, ybottom:Int ) {
		super();
		
		this.ytop = ytop;
		this.ybottom = ybottom;
	} //new
	
	override function update( dt:Float ) : Void {
		if ( entity.pos.y < ytop ) entity.pos.y = ytop;
                if ( entity.pos.y > ybottom ) entity.pos.y = ybottom;
	} //update
	
}