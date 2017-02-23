
package ;


class ColorComponent extends luxe.Component
{
	public var color : luxe.Color;
	
	
	public function new(color:luxe.Color) {
		super({ name:'component.color' });
		
		this.color = color;
		
	} //new
	
	//TESTING
	override function init() : Void {
		entity.color = color;
		
	}
	
} //ColorComponent