
package ;


class GraphicBoxComponent extends luxe.Component
{
	var _options : Dynamic;
	var _boxShape : Dynamic;
	
	
	public function new(options:luxe.options.DrawBoxOptions) {
		super({ name:'component.graphic.box' });
		
		this._options = options;
		
	} //new
	
	override function init() : Void {
		var _boxShape = Luxe.draw.box({
			w : _options.w, h : _options.h,
			color : _options.color
		});
		
	} //init
	
	override function update(dt:Float) : Void {
		_boxShape.x = entity.pos.x;
		_boxShape.y = entity.pos.y;
		
	} //update
	
} //GraphicRectComponent


typedef GraphicBoxOptions = {
	@:optional var x : Float;
	@:optional var y : Float;
	var width : Int;
	var height : Int;
	var color : luxe.Color;
} //GraphicBoxOptions