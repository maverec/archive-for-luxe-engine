
package ;



class CharacterComponent extends luxe.Component
{
	public var character : Dynamic;
	
	
	public function new(_entity:Dynamic) {
		super({ name:'component.entity.character' });
		
		this.character = _entity;
		
	} //new
	
} //CharacterComponent