
image_blend = make_colour_rgb(201,211,106);

//image_blend = make_colour_rgb(79,143,74);


aumento_da_folha = 0.06;
level = 1;
cresimento = 0.3;
image_xscale = cresimento;
image_yscale = cresimento;

// aguas coletado.
agua_coletada = 0;
mineral_coletada = 0;
sol_coletada = 0;




baseX = y;
tempo   = global.tempo_movendo_planta;
amp = 3;
t = 0;
vel     = (2*pi)/tempo;

rama_id = instance_nearest(x, y, obj_rama);

if (rama_id != noone)
{
    indice_folha = rama_id.folhas_usadas;
    rama_id.folhas_usadas += 1;
}

// locasi onde devo colocar a folhas individualmente.
pontos_folha_x = [
    0.27,
    0.5,
    1.0,
    0.83,
    1.0
    
];

pontos_folha_y = [
    0.0,
    0.18,
    0.24,
    0.45,
    1.0
];


// METODOS.
 mexendo = function()
{
    t+= vel;
    y = baseX+sin(t)*amp;
    
   // show_message("foi");
}

contador_recursos = function ()
{
    var agua = instance_place(x, y, obj_agua);
    var mineral = instance_place(x, y, obj_minerais);
    var sol = instance_place(x, y, obj_sol);
   if (mouse_check_button_released(mb_left))
   {
   	
   
      if (agua != noone and agua_coletada<level) 
       {
       	instance_destroy(agua);
           agua_coletada ++;
           
       }
       else if (mineral != noone and mineral_coletada<level) 
       {
       	instance_destroy(mineral);
           mineral_coletada ++;
           
       }
       else if (sol != noone and sol_coletada <level) 
       {
       	instance_destroy(sol);
           sol_coletada ++;
           
       }
   }
}

tamhanho = function ()
{
    // Se eu tiver recursos .
    
    if (agua_coletada==level and mineral_coletada==level and sol_coletada== level) 
    {
    	level++;
        agua_coletada       = 0;
        mineral_coletada    = 0;
        sol_coletada        = 0;
        
        
    }
    
    
    
   var _minimi = level*cresimento;

   image_xscale =lerp(image_xscale ,_minimi,aumento_da_folha);
   image_yscale =lerp(image_yscale ,_minimi,aumento_da_folha);

   
}

meu_local = function ()
{
    
    meu_local = function ()
    {
       if (instance_exists(rama_id))
       {
           x = rama_id.bbox_left + (rama_id.bbox_right - rama_id.bbox_left) * pontos_folha_x[indice_folha];
   
           y = rama_id.bbox_top + (rama_id.bbox_bottom - rama_id.bbox_top) * pontos_folha_y[indice_folha];
       }
    }
   
}