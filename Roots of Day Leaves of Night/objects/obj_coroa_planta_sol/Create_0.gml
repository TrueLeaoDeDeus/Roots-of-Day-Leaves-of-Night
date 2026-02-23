image_blend = make_colour_rgb(201,211,106);

baseX = x;

tempo   = global.tempo_movendo_planta;

amp = 6;

t = 0;

vel     = (2*pi)/tempo;

 mexendo = function()
{
    t+= vel;
    x = baseX+sin(t)*amp;
    
   // show_message("foi");
}
