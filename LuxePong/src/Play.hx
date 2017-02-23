
package ;

import composure.core.ComposeGroup;
import composure.core.ComposeRoot;
import luxe.Input;
import luxe.States;


class Play extends State
{
        var bpaddle : luxe.Visual;
        var ball : luxe.Visual;
	
	public function new() {
		super({ name : 'play' });
	}
	
	override function init() : Void {
                
                var direction : Int = ( Math.random() > .5 ) ? (1):(-1);
		var randomAngle : Float = ( Math.random() * Math.PI / 2 ) - 45;
                var yvelocity : Float = Math.sin( randomAngle ) * 3;
                var xvelocity : Float = direction * Math.cos( randomAngle ) * 3;
                
                bpaddle = new luxe.Visual({
                        name : 'enemy',
                        pos : new luxe.Vector( Luxe.screen.w - 22, 135 ),
                        size : new luxe.Vector( 12, 50 ),
                        color : new luxe.Color().rgb( 0x00FF00 )
                });
            
                ball = new luxe.Visual({
                        name : 'ball',
                        pos : new luxe.Vector( Luxe.screen.w / 2 - 6, Luxe.screen.h / 2 - 6 ),
                        size : new luxe.Vector( 12, 12 ),
                        color : new luxe.Color( 0, 0, 0, 1 ).rgb( 0x0000FF )
                });
            
                
                // var circleGeo = Luxe.draw.circle({
                //         x : ball.pos.x + ball.size.x / 2,
                //         y : ball.pos.y + ball.size.y / 2,
                //         r : ball.size.x / 2,
                //         color : new luxe.Color( 0, 0, 0, 1 ).rgb( 0x0000FF )
                // });
            
                connect_input();
		
		
		var leftpaddle : luxe.Visual = new luxe.Visual({
			name : 'player',
                        pos : new luxe.Vector( 10, 135 ),
                        size : new luxe.Vector( 12, 50 ),
                        color : new luxe.Color().rgb( 0xFF0000 )
		});
		
		
		leftpaddle.add( new InputMovement('up','down') );
		leftpaddle.add( new YBoundsSystem(
                        0, 
                        Math.round(Luxe.screen.h - leftpaddle.size.y)) 
                );
		
                ball.add( new Velocity(yvelocity, xvelocity) );
                ball.add( new BounceSystem(leftpaddle, bpaddle) );
                ball.add( new XBoundsSystem() );
                
                bpaddle.add( new YBoundsSystem(
                        0, 
                        Math.round(Luxe.screen.h - bpaddle.size.y)) 
                );
                bpaddle.add( new AISystem(ball) );

	} //init
	
	function connect_input() {
                Luxe.input.bind_key( 'up', Key.up );
                Luxe.input.bind_key( 'up', Key.key_w );
            
                Luxe.input.bind_key( 'down', Key.down );
                Luxe.input.bind_key( 'down', Key.key_s );
            
        } //connect_input

}