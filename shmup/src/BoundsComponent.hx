
package ;


class BoundsComponent extends luxe.Component
{
	public var top : Int;
	public var bottom : Int;
	public var left : Int;
	public var right : Int;
	
	
	public function new(top:Int, bottom:Int, left:Int, right:Int) {
		super({ name:'component.bounds' });
		
		this.top = top;
		this.bottom = bottom;
		this.left = left;
		this.right = right;
		
	} //new
	
} //BoundsComponent