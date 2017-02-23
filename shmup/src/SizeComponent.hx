
package ;


class SizeComponent extends luxe.Component
{
	public var w : Int;
	public var h : Int;
	
	
	public function new(sizew:Int, sizeh:Int) {
		super({ name:'component.size' });
		
		this.w = sizew;
		this.h = sizeh;
		
	} //new
	
} //SizeComponent