
package ;


class BoundsD extends luxe.Component
{
	public var ytop : Float;
	public var ybot : Float;
	public var xleft : Float;
	public var xright : Float;
	
	
	public function new( ytop:Float, ybot:Float, xleft:Float, xright:Float ) {
		super({ name:'data.bounds' });
		this.ytop = ytop;
		this.ybot = ybot;
		this.xleft = xleft;
		this.xright = xright;
		
	} //new
	
} //BoundsData