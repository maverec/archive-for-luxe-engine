
package ;



class CharacterTrait extends luxe.Component
{
	public var character : Dynamic;
	
	
	public function new(_character:Dynamic) {
		super({ name:'trait.character' });
		
		this.character = _character;
		
	} //new
	
} //CharacterTrait