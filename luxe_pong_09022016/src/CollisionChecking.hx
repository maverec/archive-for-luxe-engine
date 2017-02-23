package ;


class CollisionChecking extends luxe.Component
{
        var _hitboxA : Hitbox;
        var _hitboxB : Hitbox;
        var _collider : luxe.Sprite;
        var _velocity : Speed;
        
        public function new(collider:luxe.Sprite) {
                super();
                
                this._collider = collider;
        } //new
        
        override function init() {
                if(entity.has( 'component.hitbox' )) {
                        _hitboxA = entity.get('component.hitbox');
                }
                if(entity.has( 'component.speed' )) {
                        _velocity = entity.get('component.speed');
                }
                if(_collider.has( 'component.hitbox' )) {
                        _hitboxB = _collider.get('component.hitbox');
                }
        } //init
        
        override function update(dt:Float) {
                if(luxe.collision.Collision.shapeWithShape(_hitboxA.hitbox,_hitboxB.hitbox) != null) {
                        _velocity.x = _velocity.y = 0;
                }
        } //update
        
} //CollisionChecking