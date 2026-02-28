tempo   = 600;
valanso = 2;
vel     = .015;

agua_coletada = 0;
mineral_coletada = 0;
sol_coletada = 0;

timer_0 = 0;

folhas_usadas = 0;


instance_create_layer(x,y,"folhas",obj_folha);
instance_create_layer(x,y,"folhas",obj_folha);
instance_create_layer(x,y,"folhas",obj_folha);
instance_create_layer(x,y,"folhas",obj_folha);
instance_create_layer(x,y,"folhas",obj_folha);

// comesa no nivel 0.
meu_lvl = 0;
crescer = 1;

tem = 0;

image_xscale = crescer;
image_yscale = crescer;

global.rama_tamanhox   = sprite_width;
global.rama_tamanhoy   = sprite_height;


 mexendo = function()
{
    tempo+= vel;
    image_angle =sin(tempo)*valanso;
    global.rama_tamanhox   = sprite_width;
    global.rama_tamanhoy   = sprite_height;
}

contador_recursos = function ()
{
    var agua = instance_place(x, y, obj_agua);
    var mineral = instance_place(x, y, obj_minerais);
    var sol = instance_place(x, y, obj_sol);

    if (mouse_check_button_released(mb_left))
    {
    	
    
       if (agua != noone and agua_coletada<meu_lvl+1) 
        {
        	instance_destroy(agua);
            agua_coletada ++;
            
        }
        else if (mineral != noone and mineral_coletada<meu_lvl+1) 
        {
        	instance_destroy(mineral);
            mineral_coletada ++;
            
        }
        else if (sol != noone and sol_coletada <meu_lvl+1) 
        {
        	instance_destroy(sol);
            sol_coletada ++;
            
        }
    }
}

tamhanho = function ()
{
    // Se eu tiver recursos .
    
    if (agua_coletada==meu_lvl and mineral_coletada==meu_lvl and sol_coletada== meu_lvl) 
    {
    	meu_lvl++;
        agua_coletada       = 0;
        mineral_coletada    = 0;
        sol_coletada        = 0;
        
        global.novo_local_folha = true;
    }
    
    
    


   image_xscale =lerp(image_xscale ,crescer+(meu_lvl*0.16),0.01);
   image_yscale =lerp(image_yscale ,crescer+(meu_lvl*0.16),0.01);

   
}

