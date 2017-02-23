
package ;



class UniqueComponent extends luxe.Component
{
	public var unique : Bool;
	
	
	public function new(_unique:Bool) {
		super({ name:'component.unique' });
		
		this.unique = _unique;
		
	} //new
	
} //UniqueComponent