
package ;



class NameComponent extends luxe.Component
{
	public var nameof : String;
	
	
	public function new(_name:String) {
		super({ name:'component.name' });
		
		this.nameof = _name;
		
	} //new
	
} //NameComponent