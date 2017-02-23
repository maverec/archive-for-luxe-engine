package ;

import luxe.States;
import luxe.Text;
import luxe.Vector;
import luxe.Sprite;
import luxe.Input;

class PlayState extends State
{
        private var cooldown : Float;
        private var maxCooldown : Float;
        private var blink : Bool;
        private var block : Sprite;
        // private var userInput : Array<Text>;
        private var checksum : Array<Int>;
        private var userInput : Text;
        
        public function new() {
                super({ name : 'playstate' });
        } //new
        
        override function init() {
                var inputBox = new Text({
                        text : 'ENTER CODE : ',
                        pos : new Vector(50,50),
                        point_size : 20
                });
                
                cooldown = 0;
                maxCooldown = 0.50;
                blink = false;
                
                checksum = [];                
                
                block = new Sprite({
                        name : 'cursor.blink',
                        pos : new Vector(190,64),
                        size : new Vector(10,18),
                        visible : false
                });
                
                userInput = new Text({
                        pos : new Vector(block.pos.x - 5, block.pos.y - 12),
                        point_size : 20
                });
        } //init
        
        override function update(dt:Float) {
                if(cooldown > 0) cooldown -= dt;
                if(cooldown < 0) cooldown = 0;
                if(cooldown == 0) blinkingCursor();
                
                // printKey();
                
                // NOTE if this works, put it into a function with one argument
                // if(Luxe.input.keypressed( Key.key_1 )) {
                //         printKey(true, "1", false);
                // }
                // if(Luxe.input.keypressed( Key.backspace )) {
                //         printKey(false, "1", true);
                // }
                
                // if(Luxe.input.keypressed( Key.key_1 )) {
                //         printKey("1");
                //         checksum.push(1);
                // }
                // if(Luxe.input.keypressed( Key.key_2 )) {
                //         printKey("2");
                //         checksum.push(2);
                // }
                
                printKey(1, "1", Key.key_1);
                trace("testing");
        } //update
        
        private function printKey(int:Int, name:String, key:Int) {
                if(Luxe.input.keypressed( key )) {
                        printText(name);
                        checksum.push(int);
                }
        
        } //printKey
        
        private function blinkingCursor() {
                cooldown = maxCooldown;
                
                if(blink) {
                        block.visible = true;
                } else {
                        block.visible = false;
                }
                
                blink = !blink;
        } //blinkingCursor
        
        private function printText(numName:String) {
                var num = new Text({
                        text : numName,
                        name : 'number.' + numName,
                        name_unique : true,
                        pos : new Vector(block.pos.x - 5, block.pos.y - 12),
                        point_size : 20,
                        // visible : false
                });
                block.pos.x += 18;
                // 
                // if(del) {
                //         num.destroy(true);
                //         if(block.pos.x >= 196) block.pos.x -= 18;
                // }
                // if(print) {
                //         num.visible = true;
                //         block.pos.x += 18;
                // }
                
                // if(Luxe.input.keypressed( Key.key_2 )) {
                //         var numTwo = new Text({
                //                 text : "2",
                //                 name : 'number.two',
                //                 name_unique : true,
                //                 pos : new Vector(block.pos.x - 5, block.pos.y - 12),
                //                 point_size : 20
                //         });
                //         block.pos.x += 18;
                // }
        } // printKey
        
} //PlayState