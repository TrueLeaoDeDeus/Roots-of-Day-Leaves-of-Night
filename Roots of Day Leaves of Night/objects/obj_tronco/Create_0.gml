tempo   = 400;
valanso = 2;
vel     = .015;
local = 0;

//image_xscale = 2;
//image_yscale = 2;

//show_message(sprite_height);
global.tronco_tamanhox = sprite_width;
global.tronco_tamanhoy = sprite_height;

 mexendo = function()
{
    tempo+= vel;
    image_angle =sin(tempo)*valanso;
    
}