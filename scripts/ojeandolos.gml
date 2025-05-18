//id quien llama
if(instance_exists(zoombie)){
    blanco=-1;
    ojo=argument0.ojo;
    nn=(parametros[7]+ojo)*0.3333;
    do{
        dd=irandom(359);
        blanco=instance_nearest(argument0.x+lengthdir_x(nn,dd),argument0.y+lengthdir_y(nn,dd),zoombie);
        if(point_distance(argument0.x,argument0.y,blanco.x,blanco.y)>parametros[7]+ojo or
        collision_line(argument0.x,argument0.y,blanco.x,blanco.y,bloque,1,1)){
            blanco=-1;}
        else{
            argument0.blanco=blanco;
            argument0.vigilia=1;}
        nn+=(parametros[7]+ojo)*0.0555;}
    until(blanco>0 or nn>(parametros[7]+ojo)*0.8888);}
