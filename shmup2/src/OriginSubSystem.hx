
package ;



class OriginSubSystem extends luxe.Component
{
	public var x : Int;
	public var y : Int;
	var _size : SizeComponent;
	
	
	public function new() {
		super({ name:'sub.system.origin' });
		
	}
	
	override function init() : Void {
		if(entity.has( 'component.size' )) {
			_size = entity.get('component.size');
		} //_size
		
		x = Math.round(_size.w / 2);
		y = Math.round(_size.h / 2);
		
	} //init
	
} //OriginSubComponent