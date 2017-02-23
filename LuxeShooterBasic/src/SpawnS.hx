
package ;


class SpawnS extends luxe.Component
{
	var _delay : DelayD;
	var _enemyExists : Bool = false;
	var _potionExists : Bool = false;
	
	var _potion : luxe.Visual;
	
	
	public function new( enemy:Bool, potion:Bool ) {
		super();
		
		this._enemyExists = enemy;
		this._potionExists = potion;
		
	} //new
	
	override function init() : Void {
		if ( entity.has('data.delay') ) _delay = entity.get('data.delay');
		
	} //init
	
	override function update( dt:Float ) : Void {
		if ( _delay.cooldown > 0 ) {
			_delay.cooldown--;
		}
		if ( _delay.cooldown <= 0 ) {
			_delay.cooldown = _delay.maxcooldown;
			
			if ( _enemyExists ) {
				createEnemy();
			}
			
			if ( _potionExists ) {
				createPotion();
			}
		}
		
	} //update
	
	function createEnemy() {
		var _enemy = new luxe.Visual({
			name : 'enemy',
			name_unique : true,
			pos : new luxe.Vector(680, Math.random() * 400 + 50),
			size : new luxe.Vector(16, 32),
			color : new luxe.Color().rgb(0xFF0000)
		});
		
		_enemy.add( new SpeedData( -Math.ceil(Math.random() * 400), 0) );
		_enemy.add( new MovementS() );
		
	} //createEnemy
	
	function createPotion(){
		_potion = new luxe.Visual({
			name : 'potion',
			name_unique : true,
			pos : new luxe.Vector(650, Math.random() * 450 + 30),
			size : new luxe.Vector(10,10),
			color : new luxe.Color().rgb(0xFF00FF)
		});
		
		_potion.add( new SpeedData(-Math.round(Math.random() * 350),Math.round(Math.random() * 10)) );
		_potion.add( new MovementS() );
		
	} //createPotion
	
} //SpawnSystem