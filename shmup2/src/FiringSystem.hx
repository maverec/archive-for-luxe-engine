
package ;



class FiringSystem extends luxe.Component
{
	// var _graphic : DrawSubSystem;
	var _gameEntity : CharacterComponent;
	var _inputkey : InputKeyComponent;
	var _cooldown : CooldownComponent;
	var _topCannon : Bool = true;
	
	
	override function init() : Void {
		// if(entity.has( 'sub.system.draw' )) {
			// _graphic = entity.get('sub.system.draw');
		// } //_graphic
		
		if(entity.has( 'component.entity.character' )) {
			_gameEntity = entity.get('component.entity.character');
		} //_gameEntity
		
		if(entity.has( 'component.inputkey' )) {
			_inputkey = entity.get('component.inputkey');
		} //_inputkey
		
		if(entity.has( 'component.cooldown' )) {
			_cooldown = entity.get('component.cooldown');
		} //_cooldown
		
	} //init
	
	override function update(dt:Float) : Void {
		if(_gameEntity.character.active) {
			if(_inputkey.fire) {
				if(_cooldown.current == 0) {
					_cooldown.current = _cooldown.max;
					
					var b = new luxe.Sprite({
						name : 'subentity.bullet',
						name_unique : true,
						size : new luxe.Vector(7,3),
						color : new luxe.Color().rgb(0xFFFFFF),
					});
					
					b.add(new VelocityComponent( 400,0 ));
					b.add(new MovementSystem( ));
					b.add(new BoundsComponent( 0,450,0,620 ));
					b.add(new DestroyOutBoundsSystem( ));
					
					// if(_topCannon) {
					// 	entity.add(new PositionComponent( _gameEntity.character.pos.x + 16, _gameEntity.character.pos.y + 8 ));
					// 	entity.add(new RepositioningSystem( ));
					// } else {
					// 	entity.add(new PositionComponent( _gameEntity.character.pos.x + 16, _gameEntity.character.pos.y + 24 ));
					// 	entity.add(new RepositioningSystem( ));
					// }
					
				}
				_topCannon = !_topCannon;
				
				if(_cooldown.current > 0) {
					_cooldown.current--;
				}
				
			}
		}
		
	} //update
	
} //FiringSystem