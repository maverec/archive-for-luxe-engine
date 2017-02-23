
package ;


class GraphicComponent extends luxe.Component
{
	public var _graphic : luxe.Visual;
	
	
	public function new(name:String, name_unique:Bool, width:Int, height:Int, color:Int) {
		super({ name:'component.graphic' });
		
		_graphic = new luxe.Visual({
			name : name,
			name_unique : name_unique,
			size : new luxe.Vector(width,height),
			color : new luxe.Color().rgb(color)
		});
		
	} //new
	
	override function update(dt:Float) : Void {
		_graphic.pos.x = entity.pos.x;
		_graphic.pos.y = entity.pos.y;
		
	} //update
	
} //GraphicComponent