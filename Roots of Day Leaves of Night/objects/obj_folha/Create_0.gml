image_xscale = 0.4;
image_yscale = 0.4;

image_blend = make_colour_rgb(201,211,106);

//image_blend = make_colour_rgb(79,143,74);

indice_folha = global.contador_folhas;
global.contador_folhas++;

baseX = y;
tempo   = global.tempo_movendo_planta;
amp = 3;
t = 0;
vel     = (2*pi)/tempo;

 mexendo = function()
{
    t+= vel;
    y = baseX+sin(t)*amp;
    
   // show_message("foi");
}