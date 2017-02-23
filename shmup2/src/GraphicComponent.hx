
package ;



class GraphicComponent extends luxe.Component
{
	public var sprite : luxe.Sprite;
	
	
	public function new(sprite:luxe.Sprite) {
		super({ name:'component.graphic' });
		
		this.sprite = sprite;
		
	} //new
	
} //GraphicComponent