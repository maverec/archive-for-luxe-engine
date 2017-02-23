package ;

import luxe.Sprite;
import luxe.Vector;

class Spritec extends Sprite
{
        public var hp           : Int;
        public var vel          : Vector;
        public var letsmove     : Bool;
        
        override function init() {
                if(this.hp == null) { this.hp = 1; }
                // if(this.vel == null) { this.vel = new Vector(0,0); }
                // this.vel = new Vector(0,0);
                letsmove = false;
        } //init
        
        override function update(dt:Float) {
                if(this.hp <= 0) { this.destroy(true); }
                
                // NOTE this works for bullet and enemy
                //      trying to use this for input movement is not recommended
                if(this.vel != null) { letsmove = true; }
                if(letsmove) {
                        this.pos.x += vel.x;
                        this.pos.y += vel.y;
                }
                // NOTE for bullet
                if(this.pos.y <= -50) { this.destroy(true); }
                // NOTE for enemy
                // if(this.pos.y >= 530) { this.destroy(true); }
        } //update

} //Spritec