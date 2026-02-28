v_x         = 0.0;
v_y         = 0.0;

vel_v       = 1;
vel_h       = 1;

vel_vmax    = 1;
vel_hmax    = 1;



mover = function ()
{
    var esq = keyboard_check(vk_left);
    var dir = keyboard_check(vk_right);
    var up = keyboard_check(vk_up);
    var down = keyboard_check(vk_down);
    
    
    x+= (dir-esq)*vel_vmax; 
    y+= (down-up)*vel_hmax;
    
}


pontos_folha_x = [
    0.34,
    0.0,
    0.15,
    0.37,
    0.16
];

pontos_folha_y = [
    0.0,
    0.26,
    0.68,
    0.98,
    0.69
];