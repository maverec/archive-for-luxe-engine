package ;


class BindToScreenSystem extends luxe.Component
{
        var _bounds : Bounds;
        
        override function init() {
                if(entity.has( 'component.bounds' )) {
                        _bounds = entity.get('component.bounds');
                }
        } //init
        
        override function update(dt:Float) {
                if(entity.pos.y < _bounds.top) entity.pos.y = _bounds.top;
                if(entity.pos.y > _bounds.bottom) entity.pos.y = _bounds.bottom;
        } //update
        
} //BindToScreenSystem