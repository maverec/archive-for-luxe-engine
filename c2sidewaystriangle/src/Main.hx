
import luxe.GameConfig;
import luxe.Input;

class Main extends luxe.Game {

    override function config(config:GameConfig) {

        config.window.title = 'luxe game';
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

    //NOTE adding a States variable, to load user-defined states upon start
    public static var userLoad : luxe.States;
    //NOTE now adding a function, to be called in ready(), for loading states
    private function loadingStates () {
            userLoad = new luxe.States();
            userLoad.add(new PlayState( ));
            userLoad.set('playstate');
            
    } //loadingStates
    
} //Main