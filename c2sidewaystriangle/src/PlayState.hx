package ;

import luxe.States;
import luxe.Sprite;
import luxe.Vector;

class PlayState extends State
{        
        private var counter : Float;
        private var maxCounter : Float;
        private var reps : Int;
        private var dy : Int;
        private var dx : Int;
        
        public function new() {
                super({ name : 'playstate' });
                
        } //new
        
        override function init() : Void {
                dy = 20;
                dx = 20;
                counter = 0.50;
                maxCounter = 0.75;
                reps = 16;
                
        } //ready
        
        override function update(dt:Float) {
                if(counter > 0) {
                        counter -= dt;
                }
                if(counter < 0) {
                        counter = 0;
                }
                if(counter == 0 && reps > 0) {
                        printSqr();
                }
                
        } //update

        private var numOFSq : Int = 1;
        private var rowNum : Int = 1;
                
        private function printSqr() {
                counter = maxCounter;
                reps--;
                
                if(numOFSq == 0) {
                        if(rowNum < 5) {
                                numOFSq = 1 + rowNum++;
                        }
                        // NOTE 3 is used here because we don't want line 4 and it's 4 squares repeated on line 5
                        if(rowNum > 3) {
                                numOFSq = 8 - rowNum++;
                        }
                        dy += 30;
                        dx = 20;
                }
                numOFSq--;

                // NOTE creating the square sprite
                var spriteSqA = new Sprite({
                        name : 'sprite.square.a',
                        name_unique : true,
                        size : new Vector(8,8),
                        pos : new Vector(dx,dy)
                });                        
                dx += 20;
                // NOTE checking for origin overlap and sliding the sprite to the side if it occurs
                if(spriteSqA.pos.x == dx + 20) {
                        spriteSqA.pos.x += 20;
                }
                
        }//printSqr
        
} //PlayState