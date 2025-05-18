//id quien llama
if(control.num_unidades>1){
    blanco=-1;
    ojo=argument0.ojo;
    nn=(parametros[7]+ojo)*0.3333;
    do{
        dd=irandom(359);
        blanco=instance_nearest(argument0.x+lengthdir_x(nn,dd),argument0.y+lengthdir_y(nn,dd),tipos);
        if(blanco=argument0){
            blanco=-1;}
        else if(blanco.nombre=argument0.nombre){
            blanco=-1;}
        else if(blanco.grupo>0 and blanco.grupo=argument0.grupo){
            blanco=-1;}
        else if(argument0.ojo=1 and blanco.ojo=1){//si ambos son chavo u homero
            blanco=-1;}
        else if(point_distance(argument0.x,argument0.y,blanco.x,blanco.y)>parametros[7]+ojo or
        collision_line(argument0.x,argument0.y,blanco.x,blanco.y,bloque,1,1)){
            blanco=-1;}
        else{
            if(argument0.ojo!=1){//ojo=1 significa chavo u homero
            if(argument0.vigilia=0 and argument0.estado=2){
                switch(irandom(2)){
                    case 0: sound_play(s_visto1); break;
                    case 1: sound_play(s_visto2); break;
                    case 2: sound_play(s_visto3); break;}}}
            argument0.blanco=blanco;
            argument0.vigilia=1;
            dirijetipos(argument0);}
        nn+=(parametros[7]+ojo)*0.0555;}
    until(blanco>0 or nn>(parametros[7]+ojo)*0.8888);}
