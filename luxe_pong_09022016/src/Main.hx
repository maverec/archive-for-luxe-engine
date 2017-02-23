
import luxe.GameConfig;
import luxe.Input;

class Main extends luxe.Game {

    override function config(config:GameConfig) {

        config.window.title = 'Pong';
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
    
    public static var userLoad : luxe.States;
    
    private function loadingStates() {
            userLoad = new luxe.States();
            userLoad.add(new Play( ));
            userLoad.set('state.play');
    } //loadingStates

} //Main
