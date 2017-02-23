
package ;



class BoundsComponent extends luxe.Component
{
	public var t : Int;
	public var b : Int;
	public var l : Int;
	public var r : Int;
	
	
	public function new(top:Int, bottom:Int, left:Int, right:Int) {
		super({ name:'component.bounds' });
		
		this.t = top;
		this.b = bottom;
		this.l = left;
		this.r = right;
		
	} //new
	
} //BoundsComponent