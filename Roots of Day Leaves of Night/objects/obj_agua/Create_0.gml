
baseX = y;

tempo   = random(360);

amp = 3;

t = 0;

vel     = (2*pi)/tempo;
 
//show_message(depth);

mouse_sobre = false;

 mexendo = function()
{
    if(mouse_sobre == false)
    {
           t+= vel;
        y = baseX+sin(t)*amp;
    
        // show_message("foi");
    }
    else 
    {
    	x = mouse_x;
        y = mouse_y;
        
        baseX = y;
    }
 
  
    
    
}