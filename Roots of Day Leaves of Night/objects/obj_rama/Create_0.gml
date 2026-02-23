tempo   = 600;

valanso = 2;

vel     = .015;

 mexendo = function()
{
    tempo+= vel;
    image_angle =sin(tempo)*valanso;
    
}
