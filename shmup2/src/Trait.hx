
package ;


import luxe.Sprite;
import luxe.Vector;
import phoenix.geometry.Geometry;
import phoenix.Texture;
import luxe.Color;
import luxe.Quaternion;
import luxe.Transform;

// typedef luxe.Sprite = GraphicEntity;

// @:autoBuild(luxe.macros.ComponentRules.apply())

class Trait extends luxe.Component
{
	@:isVar public var sprite (get,set) : Sprite;
	
	//
	public var size			(get,set) : Vector;
	// public var geometry		(get,set) : Geometry;
	// public var locked		(get,set) : Bool;
	public var texture		(get,set) : Texture;
	// public var shader		(get,set) : Shader;
	public var color		(get,set) : Color;
	public var visible		(get,set) : Bool;
	public var depth		(get,set) : Float;
	// public var clip_rect		(get,set) : Rectangle;
	public var radians		(get,set) : Float;
	// public var rotation_z		(get,set) : Float;
	
	//
	// public var centered         	(get,set) : Bool;
	// public var flipx            	(get,set) : Bool;
	// public var flipy		(get,set) : Bool;
	// public var uv			(get,set) : Rectangle;
	
//sprite
	function _detach_sprite() {

        	if(sprite != null) {
	            //entity.off(Ev.reset, _reset);
	        }

	} //detach_sprite

	function _attach_sprite() {

		if(sprite != null) {
	            //entity.on(Ev.reset, _reset);
	        }

	} //attach_sprite

	function set_sprite(_sprite:Sprite) {

	        _detach_sprite();

	  	sprite = _sprite;

	        _attach_sprite();

	        return sprite;

	} //set_sprite

	function get_sprite() {

	        return sprite;

	} //get_sprite
	
	
// //transforms
// 	//
// 	function set_pos( _p:Vector ) {
//         	return sprite.transform.pos = _p;
// 	} //set_pos
// 
//     	function get_pos() {
// 	        return sprite.transform.pos;
//     	} //get_pos
// 
//     	function set_rotation( _r:Quaternion ) {
// 	        return sprite.transform.rotation = _r;
//     	} //set_rotation
// 
//    	function get_rotation() {
// 	        return sprite.transform.rotation;
//     	} //get_rotation
// 
//     	function set_scale(_s:Vector) {
// 	        return sprite.transform.scale = _s;
//     	} //set_scale
// 
//     	function get_scale() {
// 	        return sprite.transform.scale;
//     	} //get_scale
// 
//     	function set_origin(_o:Vector) {
// 	        return sprite.transform.origin = _o;
//     	} //set_origin
// 
//     	function get_origin() {
// 	        return sprite.transform.origin;
//     	} //get_origin
// 
//     	function set_transform(_o:Transform) {
// 	        return sprite.transform = _o;
//     	} //set_transform
// 
//     	function get_transform() {
// 	        return sprite.transform;
//     	} //get_transform
	
//
	//
	function set_size(_s:Vector) {
		return sprite.size = _s ;
	}
	function get_size() {
		return sprite.size;
	}
	
	//
	function set_texture(_t:Texture) {
		return sprite.texture = _t;
	}
	function get_texture() {
		return sprite.texture;
	}
	
	//
	function set_color(_c:Color) {
		return sprite.color = _c;
	}
	function get_color() {
		return sprite.color;
	}
	
	//
	function set_visible(_v:Bool) {
		return sprite.visible = _v;
	}
	function get_visible() {
		return sprite.visible;
	}
	
	//
	function set_depth(_d:Float) {
		return sprite.depth = _d;
	}
	function get_depth() {
		return sprite.depth;
	}
	
	//
	function set_radians(_r:Float) {
		return sprite.radians = _r;
	}
	function get_radians() {
		return sprite.radians;
	}
	
	// //
	// function set_() {
	// 	return sprite. = _;
	// }
	// function get_() {
	// 	return sprite.;
	// }
}