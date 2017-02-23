
package ;

import luxe.options.EntityOptions;


class Magazine extends luxe.Entity
{
	public var feedingSpring : Bool = false;
	
	
	public function new(_options:MagazineOptions) {
		if(_options.feedingSpring != null) {
			this.feedingSpring = _options.feedingSpring;
		} //feedingSpring
		
		super(_options);
		
	} //new
	
} //Magazine


typedef MagazineOptions = {
	> EntityOptions,
	
	@:optional var feedingSpring : Bool;
	
} //MagazineOptions