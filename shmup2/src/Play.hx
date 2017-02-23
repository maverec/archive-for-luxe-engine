
package ;

import luxe.States;


class Play extends State
{
	public function new() {
		super({ name:'play' });
	} //new
	
	override function init() : Void {
		// var player = new luxe.Entity({ name:'entity.player' });
		var blue = new luxe.Color().rgb(0x0000FF);
		var white = new luxe.Color().rgb(0xFFFFFF);
		
		// player.add(new NameComponent( 'sprite.blueship' ));
		// player.add(new UniqueComponent( false ));
		// player.add(new SizeComponent( 16,32 ));
		// // player.add(new OriginSubSystem( ));
		// player.add(new PositionComponent( 80, Luxe.screen.h / 2 - 16 ));
		// player.add(new PositionComponent( 40, 120 ));
		// player.add(new ColorComponent( blue ));
		// player.add(new DrawSubSystem( ));
		// player.add(new InputKeyComponent( ));
		// player.add(new VelocityComponent( 300,300 ));
		// player.add(new InputMoveSystem( ));
		// player.add(new BoundsComponent( 0, Luxe.screen.h - 32, 0, Luxe.screen.w - 16 ));
		// player.add(new BoundsSystem( ));
		//TESTING
		// player.add(new DeathSystem( ));
		// player.add(new FiringSystem( ));
		
		var blueship = new luxe.Sprite({
			name : 'entity.blueship',
			size : new luxe.Vector(16,32),
			color : blue,
			centered : false,
			// parent : player
		});
		
		blueship.add(new PositionComponent( 80, Luxe.screen.h / 2 - 16 ));
		blueship.add(new RepositioningSystem( ));
		blueship.add(new InputKeyComponent( ));
		blueship.add(new VelocityComponent( 300,300 ));
		blueship.add(new InputMoveSystem( ));
		blueship.add(new BoundsComponent( 0, Luxe.screen.h - 32, 0, Luxe.screen.w - 16 ));
		blueship.add(new BoundsSystem( ));
		
		var weapon1 = new luxe.Entity({ name:'entity.weapon1', active:false });
		
		var clip1 = new luxe.Entity({ name:'entity.clip1', active:false });
		
		bullets.add(new PositionComponent( blueship.pos.x,blueship.pos.y ));
		bullets.add(new RepositioningSystem( ));
		bullets.add(new VelocityComponent( 400,0 ));
		bullets.add(new MovementSystem( ));
		bullets.add(new BoundsComponent( 0,400,0,600 ));
		bullets.add(new DestroyOutBoundsSystem( ));
		bullets.add(new InputKeyComponent( ));
		bullets.add(new CooldownComponent( 0,5 ));
		bullets.add(new CharacterComponent( blueship ));
		bullets.add(new FiringSystem( ));
		
	} //init
	
} //Play