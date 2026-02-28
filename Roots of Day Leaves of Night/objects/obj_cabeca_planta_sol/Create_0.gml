

instance_create_layer(room_width/2,room_height-345,"corao_pl",obj_coroa_planta_sol);

instance_create_layer(room_width/2,room_height-260,"obj_fcs",obj_folha_cabeca_sol);

instance_create_layer(room_width/2-82,room_height-345,"obj_fcs",obj_folha_cabeca_sol);

instance_create_layer(room_width/2+82,room_height-345,"obj_fcs",obj_folha_cabeca_sol);

instance_create_layer(room_width/2,room_height-430,"obj_fcs",obj_folha_cabeca_sol);


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
