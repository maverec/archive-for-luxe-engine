package ;


class CollisionSystem extends luxe.Component
{
        var _velocity : Speed;
        var _target : CollidesWith;
        
        override function init() {
                if(entity.has( 'component.speed' )) {
                        _velocity = get('component.speed');
                }
                if(entity.has( 'component.collidewith' )) {
                        _target = get('component.collidewith');
                }
        } //init
        
        override function update(dt:Float) {
                var _direction : Int = (Math.random() > .5) ? (1):(-1);
		var _randomAngle : Float = (Math.random() * Math.PI / 2) - 60;
                var _yvelocity : Float = Math.sin(_randomAngle) * 3;
                var _xvelocity : Float = _direction * Math.cos(_randomAngle) * 3;
                
                if(entity.pos.x <= _target.body.pos.x + Play.TILE_SIZE) {
                        _velocity.x *= _direction;
                        _velocity.y *= _direction;
                }
        } //update

} //CollisionSystem

// var target : luxe.Visual;
// 
// 
// public function new( target:luxe.Visual ) {
//         super();
//         this.target = target;
// } //new
// 
// override function update( dt:Float ) : Void {
//         if ( target.pos.x > 400 && target.pos.y > entity.pos.y + 10 )
//                 entity.pos.y += 5;
//                 
//         if ( target.pos.x > 400 && target.pos.y < entity.pos.y + 40 )
//                 entity.pos.y -= 5;
// } //update