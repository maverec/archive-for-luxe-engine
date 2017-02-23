
import luxe.GameConfig;
import luxe.Input;
import luxe.States;

class Main extends luxe.Game {

    override function config(config:GameConfig) {

        config.window.title = 'luhn checksum validation';
        config.window.width = 640;
        config.window.height = 480;
        config.window.fullscreen = false;

        return config;

    } //config

    override function ready() {
            loadingStates();
    } //ready

    override function onkeyup( e:KeyEvent ) {

        if(e.keycode == Key.escape) {
            Luxe.shutdown();
        }

    } //onkeyup

    override function update(dt:Float) {

    } //update

    public static var userLoad : States;
    
    private function loadingStates() {
            userLoad = new States();
            userLoad.add(new PlayState( ));
            userLoad.set('playstate');            
    } // loadingStates
    
} //Main
