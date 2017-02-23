
import luxe.Input;
import luxe.Sprite;
import luxe.Vector;
import luxe.Color;

class Main extends luxe.Game {
        
        private var blockWidth : Int = 20;
        private var blockHeight : Int = 100;
        
        private var block : Sprite;
        private var blockEnemy : Sprite;
        
    override function ready() {
            block = new Sprite({
                    name : 'Paddle',
                    pos : new Vector( blockWidth, Luxe.screen.mid.y ),
                    color : new Color().rgb( 0xFFFFFF ),
                    size : new Vector( blockWidth, blockHeight )
            });
            
            blockEnemy = new Sprite({
                    name : 'Paddle2',
                    pos : new Vector( Luxe.screen.width - blockWidth, Luxe.screen.mid.y ),
                    color : new Color().rgb( 0xFFFFFF ),
                    size : new Vector( blockWidth, blockHeight )
            });
    } //ready

    override function onkeyup( e:KeyEvent ) {

        if ( e.keycode == Key.escape ) {
            Luxe.shutdown();
        }

    } //onkeyup

    override function update( dt:Float ) {

    } //update


} //Main
