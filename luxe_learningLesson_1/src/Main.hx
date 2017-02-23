
import luxe.Input;
import luxe.Sprite;
import luxe.Color;
import luxe.Vector;

class Main extends luxe.Game 
{
        private var block:Sprite;

    override function ready() {
            
            block = new Sprite( {
                    name: 'a block sprite',
                    pos: Luxe.screen.mid,
                    color: new Color().rgb(0xf94b04),
                    size: new Vector(128, 128)
            });

    } //ready
    
    override function onmousemove( event:MouseEvent ) {
            block.pos = event.pos;
    }

    override function onkeyup( e:KeyEvent ) {

        if(e.keycode == Key.escape) {
            Luxe.shutdown();
        }

    } //onkeyup

    override function update(dt:Float) {
        block.rotation_z += 40 * dt;
    } //update


} //Main
