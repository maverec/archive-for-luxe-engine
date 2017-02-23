package trait;

import luxe.Component;

class Health extends Component
{
        public var hp   : Int;
        
        public function new(health:Int) {
                super({ name:'health' });
                
                this.hp = health;
        } //new

} //Health