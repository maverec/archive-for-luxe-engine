
package ;



class SizeComponent extends luxe.Component
{
	public var w : Int;
	public var h : Int;
	
	
	public function new(width:Int, height:Int) {
		super({ name:'component.size' });
		
		this.w = width;
		this.h = height;
		
	} //new
	
} //SizeComponent