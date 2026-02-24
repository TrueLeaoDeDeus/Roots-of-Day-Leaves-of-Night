tempo   = 600;
valanso = 2;
vel     = .015;



image_xscale = 1;
image_yscale = 1;

global.rama_tamanhox   = sprite_width;
global.rama_tamanhoy   = sprite_height;




 mexendo = function()
{
    tempo+= vel;
    image_angle =sin(tempo)*valanso;
    
}
