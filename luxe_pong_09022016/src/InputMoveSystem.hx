package ;

import luxe.Input;


class InputMoveSystem extends luxe.Component
{
        private var _velocity : Speed;
        
        private var _keyup : Int;
        private var _keydown : Int;
        
        public function new(up:Int, down:Int) {
                super();
                
                this._keyup = up;
                this._keydown = down;
        } //new
        
        override function init() {
                if(entity.has( 'component.speed' )) {
                        _velocity = entity.get('component.speed');
                } else {
                        _velocity.x = _velocity.y = 1;
                }
        } //init
        
        override function update(dt:Float) {
                if(Luxe.input.keydown( _keyup )) {
                        entity.pos.y -= _velocity.y;
                }
                if(Luxe.input.keydown( _keydown )) {
                        entity.pos.y += _velocity.y;
                }
        } //update
        
} //InputMoveSystem