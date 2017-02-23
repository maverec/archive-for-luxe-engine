

package ;

import luxe.Input;



class InputKeyTrait extends luxe.Component
{
	public var left : Bool = false;
	public var right : Bool = false;
	public var down : Bool = false;
	public var up : Bool = false;
	public var fire : Bool = false;
	
	public var move : Bool = false;
	
	
	public function new() {
		super({ name:'trait.inputkey' });
		
	} //new
	
	override function init() : Void {
		Luxe.input.bind_key('left', Key.left);
		Luxe.input.bind_key('left', Key.key_a);
		
		Luxe.input.bind_key('right', Key.right);
		Luxe.input.bind_key('right', Key.key_d);
		
		Luxe.input.bind_key('up', Key.up);
		Luxe.input.bind_key('up', Key.key_w);
		
		Luxe.input.bind_key('down', Key.down);
		Luxe.input.bind_key('down', Key.key_s);
		
		Luxe.input.bind_key('fire', Key.space);
		
	} //init
	
	override function update(dt:Float) : Void {
		left = Luxe.input.inputdown('left');
		right = Luxe.input.inputdown('right');
		down = Luxe.input.inputdown('down');
		up = Luxe.input.inputdown('up');
		
		fire = Luxe.input.inputdown('fire');
		
		if(left && right) {
			left = right = move = false;
		} else {
			move = true;
		}
		
		if(down && up) {
			down = up = move = false;
		} else {
			move = true;
		}
		
	} //update
	
} //InputKeyComponent