// Localizando o tronco.



// Creando os objetos.
instance_create_layer(room_width/2,room_height,layer,obj_vaso_grande); // Vaso grande.
instance_create_layer(room_width/2,room_height-112,"tronco",obj_tronco);// Tronco.w
instance_create_layer(obj_tronco.x+global.tronco_tamanhox/11,obj_tronco.y-global.tronco_tamanhox/8,"galhos",obj_rama);// Galho.
instance_create_layer(room_width/2,room_height-345,"cabeca_devora_sol",obj_cabeca_planta_sol);
tronco_x = obj_tronco.x;
tronco_y = obj_tronco.y;
cria_galho = function()
{
   //show_message(tronco_x);
}