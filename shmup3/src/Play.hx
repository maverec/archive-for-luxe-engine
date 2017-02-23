
package ;

import luxe.States;


class Play extends State
{
	//TEST:
	var mag1 : luxe.Entity;
	var weapon1 : luxe.Entity;
	var blueship : luxe.Sprite;
	
	
	public function new() {
		super({ name:'state.play' });
		
	} //new
	
	override function init() : Void {
		//TEST:
		// var 
		// mag1 = new luxe.Entity({ name : 'entity.mag1' });
		// mag1.add(new CooldownTrait( 0,5 ));
		// mag1.add(new BulletGeneratorBehavior( ));
		//TEST:
		// var 
		// weapon1 = new luxe.Entity({ name : 'entity.weapon1' });
		// weapon1.add(new MagTrait( mag1 ));
		// weapon1.add(new LoadMagBehavior( ));
		
		//TEST:
		mag1 = new Magazine({ name:'entity.mag1' });
		
		//TEST:
		weapon1 = new Weapon({ name:'entity.weapon1' });
		
		//TEST:
		var blueship = new Character({
			name : 'entity.blueship',
			pos : new luxe.Vector(80, Luxe.screen.h / 2 - 16),
			size : new luxe.Vector(16,32),
			color : new luxe.Color().rgb(0x0000FF),
			centered : false,
			velocity : new luxe.Vector(300,300),
			health : 5
		});
		
		// var 
		// blueship = new luxe.Sprite({
		// 	name : 'entity.blueship',
		// 	pos : new luxe.Vector(80, Luxe.screen.h / 2 - 16),
		// 	size : new luxe.Vector(16,32),
		// 	color : new luxe.Color().rgb(0x0000FF),
		// 	centered : false
		// });
		// 
		// blueship.add(new VelocityTrait( 300,300 ));
		// blueship.add(new InputKeyTrait( ));
		// blueship.add(new InputMoveBehavior( ));
		// blueship.add(new BoundsTrait( 0, Luxe.screen.h - 32, 0, Luxe.screen.w - 16 ));
		// blueship.add(new BoundsBehavior( ));
		//TEST:
		// blueship.add(new AssignWeaponTrait( weapon1 ));
		// blueship.add(new EquipWeaponBehavior( ));
		// blueship.add(new FireWeaponBehavior( ));

		//TEST:
		var player = new luxe.Entity({ name:'entity.player' });
		player.add(new CharacterTrait( blueship ));
		player.add(new WeaponTrait( weapon1 ));
		player.add(new MagTrait( mag1 ));
		// player.add(new EquipWeaponBehavior( ));
		// player.add(new LoadMagBehavior( ));
		// player.add(new FireWeaponBehavior( ));
		// player.add(new BulletGeneratorBehavior( ));
		// player.add(new CharacterTrait( blueship ));
		// player.add(new VelocityTrait( 300,300 ));
		player.add(new InputKeyTrait( ));
		// player.add(new CooldownTrait( 0,5 ));
		player.add(new FiringBehavior( ));
		player.add(new ControlledMovementBehavior( ));
		
	} //init
	
	//TEST:
	override function update(dt:Float) : Void {
		// mag1.pos.x = weapon1.pos.x = blueship.pos.x;
		// mag1.pos.y = weapon1.pos.y = blueship.pos.y;
		
	} //update
	
} //Play