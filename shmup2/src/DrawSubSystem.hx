
package ;



class DrawSubSystem extends luxe.Component
{
	public var sprite : luxe.Sprite;
	
	var _name : NameComponent;
	var _unique : UniqueComponent;
	var _size : SizeComponent;
	var _pos : PositionComponent;
	var _color : ColorComponent;
	
	
	public function new() {
		super({ name:'sub.system.draw' });
		
	} //new
	
	override function init() : Void {
		if(entity.has( 'component.name' )) {
			_name = entity.get('component.name');
		} //_name
		if(entity.has( 'component.unique' )) {
			_unique = entity.get('component.unique');
		} //_unique
		if(entity.has( 'component.size' )) {
			_size = entity.get('component.size');
		} //_size
		if(entity.has( 'component.position' )) {
			_pos = entity.get('component.position');
		} //_pos
		if(entity.has( 'component.color' )) {
			_color = entity.get('component.color');
		} //_color
		
		entity.pos.x = _pos.x;
		entity.pos.y = _pos.y;

		sprite = new luxe.Sprite({
			name : _name.nameof,
			name_unique : _unique.unique,
			pos : new luxe.Vector(entity.pos.x, entity.pos.y),
			size : new luxe.Vector(_size.w, _size.h),
			color : _color.clr,
			parent : entity
		});
		
		// 
		// sprite.size.x = _size.w;
		// sprite.size.y = _size.h;
		// sprite.color = _color.clr;
		
	} //init
	
	override function update(dt:Float) : Void {
		// _pos.x = entity.pos.x;
		// _pos.y = entity.pos.y;
		
		// sprite.pos.x = _pos.x;
		// sprite.pos.y = _pos.y;
		
		// sprite.pos.x = entity.pos.x;
		// sprite.pos.y = entity.pos.y;
		
	} //update
	
} //DrawSystem