
import luxe.Input;
import luxe.Sprite;
import luxe.Vector;
import phoenix.Texture;

class Main extends luxe.Game {
        
        var player : Sprite;
        var move_speed : Float = 0;
        
        override function config( config:luxe.AppConfig ) {
                config.preload.textures.push({ id:'assets/EDIT_bulbasaur.png' });
                
                return config;
        }

    override function ready() {
            var image = Luxe.resources.texture('assets/EDIT_bulbasaur.png');
            
            image.filter_min = image.filter_mag = FilterType.nearest;
            
            var height = 32;
            var width = 32;
            
            move_speed = width * 3;
            
            player = new Sprite({
                    name : 'player',
                    texture : image,
                    pos : new Vector(Luxe.screen.mid.x, Luxe.screen.h - (height / 1.75)),
                    size : new Vector(width, height)
            });
            
            connect_input();
    } //ready
    
    function connect_input() {
            Luxe.input.bind_key('left', Key.left);
            Luxe.input.bind_key('left', Key.key_a);
            
            Luxe.input.bind_key('right', Key.right);
            Luxe.input.bind_key('right', Key.key_d);
    }

    override function onkeyup( e:KeyEvent ) {

        if(e.keycode == Key.escape) {
            Luxe.shutdown();
        }

    } //onkeyup

    override function update(dt:Float) {
            if (Luxe.input.inputdown('left')) {
                    player.pos.x -= move_speed * dt;
                    player.flipx = true;
            } else if (Luxe.input.inputdown('right')) {
                    player.pos.x += move_speed * dt;
                    player.flipx = false;
            }
    } //update


} //Main
