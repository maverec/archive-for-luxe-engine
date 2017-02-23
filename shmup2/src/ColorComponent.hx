
package ;



class ColorComponent extends luxe.Component
{
	public var clr : luxe.Color;
	
	
	public function new(color:luxe.Color) {
		super({ name:'component.color' });
		
		this.clr = color;
		
	} //new
	
} //ColorComponent