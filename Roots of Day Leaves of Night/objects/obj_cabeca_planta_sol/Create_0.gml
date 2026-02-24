

instance_create_depth(room_width/2,room_height-345,100,obj_coroa_planta_sol);

instance_create_depth(room_width/2,room_height-260,-2,obj_folha_cabeca_sol);

instance_create_depth(room_width/2-82,room_height-345,-2,obj_folha_cabeca_sol);

instance_create_depth(room_width/2+82,room_height-345,-2,obj_folha_cabeca_sol);

instance_create_depth(room_width/2,room_height-430,-2,obj_folha_cabeca_sol);


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
