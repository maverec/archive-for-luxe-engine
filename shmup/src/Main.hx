
import luxe.Input;


class Main extends luxe.Game {

        override function config(config:luxe.AppConfig) {
                config.window.width = 640;
                config.window.height = 480;
                config.window.resizable = false;
                
                return config;

        } //config

        override function ready() {
                assetsLoaded();
        } //ready

        override function onkeyup(e:KeyEvent) {

                if(e.keycode == Key.escape) {
                        Luxe.shutdown();
                }

        } //onkeyup

        override function update(dt:Float) {

        } //update

        public static var fsm : luxe.States;
        
        function assetsLoaded() {
                fsm = new luxe.States();
                fsm.add( new Play() );
                fsm.set('play');
                
        } //assetsLoaded
        
} //Main
