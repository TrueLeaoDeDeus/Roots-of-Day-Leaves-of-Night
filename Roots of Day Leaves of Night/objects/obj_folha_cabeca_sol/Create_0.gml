image_blend = c_yellow;

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
