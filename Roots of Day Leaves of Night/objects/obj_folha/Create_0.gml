
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

indice_folha = global.contador_folhas;
global.contador_folhas++;

meu_indice = 0;

baseX = y;
tempo   = global.tempo_movendo_planta;
amp = 3;
t = 0;
vel     = (2*pi)/tempo;






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
    
    var rama_id = instance_nearest(x,y,obj_rama);
       if (indice_folha==0 and rama_id)   
    {
   	    
   
       x  = obj_rama.x+rama_id.sprite_width;
       y  = obj_rama.y+rama_id.sprite_height/32;
    }
    if (indice_folha==1 and rama_id)   
    {
   	    var rama_id = instance_nearest(x,y,obj_rama);
        x  = obj_rama.x+rama_id.sprite_width; 
        y  = obj_rama.y-rama_id.sprite_height/4;
    }
    if (indice_folha==2 and rama_id)   
        {
       	    var rama_id = instance_nearest(x,y,obj_rama);
            
            x  = obj_rama.x+rama_id.sprite_width/2;
            y  = obj_rama.y-rama_id.sprite_height/3;
        }
    if (indice_folha==3 and rama_id)   
        {
       	    var rama_id = instance_nearest(x,y,obj_rama);
            
            x  = obj_rama.x+rama_id.sprite_width/4;
            y  = obj_rama.y-rama_id.sprite_height/2;
        }
    
    if (indice_folha==4 and rama_id)   
        {
       	    var rama_id = instance_nearest(x,y,obj_rama);
            
            x  = obj_rama.x+(rama_id.sprite_width/2)*2;
            y  = obj_rama.y+rama_id.sprite_height/2;
        }
    if (indice_folha ==4)
    {
    	indice_folha = 0;
    }
}