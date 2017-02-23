package ;


class BallMovingSystem extends luxe.Component
{
        var _velocity : Speed;
                
        override function init() {
                if(entity.has( 'component.speed' )) {
                        _velocity = entity.get('component.speed');
                } else {
                        _velocity.x = 1;
                        _velocity.y = 1;
                }
        } //init
        
        override function update(dt:Float) {
                entity.pos.x += _velocity.x;
                entity.pos.y += _velocity.y;
        } //update
        
} //BallMovingSystem