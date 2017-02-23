package ;


class CollisionCheck extends luxe.Component
{
        private var _targetA : Dynamic;
        private var _targetB : Dynamic;
        private var _hitboxA : Hitbox;
        private var _hitboxB : Hitbox;
        private var _velocity : Speed;
        
        public function new(targetA:Dynamic, targetB:Dynamic) {
                super();
                
                this._targetA = targetA;
                this._targetB = targetB;
        } //new
        
        override function init() {
                if(_targetA.has( 'component.hitbox' )) {
                        _hitboxA = _targetA.get('component.hitbox');
                }
                if(_targetB.has( 'component.hitbox' )) {
                        _hitboxB = _targetB.get('component.hitbox');
                }
                if(_targetA.has( 'component.speed' )) {
                        _velocity = _targetA.get('component.speed');
                }
        } //init
        
        override function update(dt:Float) {
                if(_hitboxA.hitbox.overlaps( _hitboxB.hitbox )) {
                        _hitboxA.gothit = true;
                }
                
                if(_hitboxA.gothit) {
                        bouncing();
                        _hitboxA.gothit = false;
                }
        } //update
        
        private function bouncing() {
                var _direction : Int = (Math.random() > .5) ? (1):(-1);
		var _randomAngle : Float = (Math.random() * Math.PI / 2) - 60;
                var _yvelocity : Float = Math.sin(_randomAngle) * 3;
                var _xvelocity : Float = _direction * Math.cos(_randomAngle) * 3;
                
                _velocity.x = _xvelocity;
                _velocity.y = _yvelocity;
        } //bouncing
        
} //CollisionCheck