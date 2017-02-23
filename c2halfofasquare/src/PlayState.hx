package ;

import luxe.States;
import luxe.Sprite;

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
                reps = 15;
                
        } //ready
        
        override function update(dt:Float) {
                // NOTE attempt #3 at chapter 2 halfofasquare
                if(counter > 0) {
                        counter -= dt;
                }
                if(counter < 0) {
                        counter = 0;
                }
                if(counter == 0 && reps > 0) {
                        // printSqr();
                        printSqr2();
                }
                
        } //update
        
        // NOTE attempt #1 for chapter 2 halfofasquare
        private function printSqr() {
                counter = maxCounter;
                if(reps > 15) {
                        reps = 15;
                }
                if(reps <= 15 && reps > 10) {
                        dx += 20;
                }
                if(reps <= 10 && reps > 6) {
                        if(dx > 100) {
                                dx = 20;
                        }
                        dx += 20;
                        dy = 50;
                }
                if(reps <= 6 && reps > 3) {
                        if(dx > 80) {
                                dx = 20;
                        }
                        dx += 20;
                        dy = 80;
                }
                if(reps <= 3 && reps > 1) {
                        if(dx > 60) {
                                dx = 20;
                        }
                        dx += 20;
                        dy = 110;
                }
                if(reps == 1) {
                        if(dx > 20) {
                                dx = 20;
                        }
                        dx += 20;
                        dy = 140;
                }
                reps--;
                
                var squareSpr = new luxe.Sprite({
                        name : 'print.square',
                        name_unique : true,
                        pos : new luxe.Vector(dx,dy),
                        size : new luxe.Vector(8,8)
                });
        }

        // NOTE refactoring and trying overlap correction
        private var numOFSq : Int = 5;
        private var rowNum : Int = 1;
        
        private function printSqr2() {
                counter = maxCounter;
                reps--;
                // NOTE countdown of the number of square sprites per row, then when countdown reaches 0, change the x,y coordinates to the next row
                if(numOFSq == 0) {
                        numOFSq = 5 - rowNum++;
                        dy += 30;
                        dx = 20;
                }
                numOFSq--;
                // NOTE creating the square sprite
                var spriteSqA = new luxe.Sprite({
                        name : 'sprite.square.a',
                        name_unique : true,
                        size : new luxe.Vector(8,8),
                        pos : new luxe.Vector(dx,dy)
                });                        
                dx += 20;
                // NOTE checking for origin overlap and sliding the sprite to the side if it occurs
                if(spriteSqA.pos.x == dx + 20) {
                        spriteSqA.pos.x += 20;
                }
                
        }//printSqr2
        
        // NOTE refactoring is successful, going from 44 lines to 23 lines, and is much cleaner with a lot less control statements 
} //PlayState