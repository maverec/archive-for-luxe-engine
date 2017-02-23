package ;


class BallHitsSideSystem extends luxe.Component
{
        private var _speed : Speed;
        
        override function init() {
                if(entity.has( 'component.speed' )) {
                        _speed = get('component.speed');
                } else {
                        _speed.x = _speed.y = 1;
                }
        } //init
        
        override function update(dt:Float) {
                var _direction : Int = (Math.random() > 0.5) ? (1):(-1);
                var _randomAngle : Float = (Math.random() * Math.PI / 2) - 60;
                var _yvelocity : Float = Math.sin(_randomAngle) * 3;
                var _xvelocity : Float = _direction * Math.cos(_randomAngle) * 3;
                
                if(entity.pos.x <= 0 || entity.pos.x >= ( Play.GAME_WIDTH - Play.TILE_SIZE / 2 )) {
                        entity.pos.x = Play.GAME_WIDTH / 2;
                        entity.pos.y = Play.GAME_HEIGHT / 2;
                        
                        _speed.x = _xvelocity;
                        _speed.y = _yvelocity;
                }
        } //update
        
} //BallHitsSideSystem