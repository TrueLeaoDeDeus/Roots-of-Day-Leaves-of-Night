// Localizando o tronco.



// Creando os objetos.
instance_create_layer(room_width/2,room_height,layer,obj_vaso_grande); // Vaso grande.
instance_create_layer(room_width/2,room_height-112,"tronco",obj_tronco);// Tronco.w
instance_create_layer(obj_tronco.x+global.tronco_tamanhox/11,obj_tronco.y-global.tronco_tamanhox/8,"galhos",obj_rama);// Galho.


var tronco_id = instance_nearest(x,y,obj_tronco);

lx = tronco_id.bbox_left + (tronco_id.bbox_right - tronco_id.bbox_left)*0.31;
ly = tronco_id.bbox_top + (tronco_id.bbox_bottom - tronco_id.bbox_top)*0.8;

instance_create_layer( lx,ly,"galhos",obj_rama_esquerdo);





instance_create_layer(room_width/2,room_height-345,"cabeca_devora_sol",obj_cabeca_planta_sol);


