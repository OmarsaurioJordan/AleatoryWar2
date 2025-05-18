//id quien llama
if(instance_exists(tipos)){
    blanco=-1;
    nn=450*0.3333;
    do{
        dd=irandom(359);
        blanco=instance_nearest(argument0.x+lengthdir_x(nn,dd),argument0.y+lengthdir_y(nn,dd),tipos);
        if(blanco.nombre!="3_1416" and blanco.nombre!="Pi" and blanco.nombre!="Web"){
            if(point_distance(argument0.x,argument0.y,blanco.x,blanco.y)>450 or
            collision_line(argument0.x,argument0.y,blanco.x,blanco.y,bloque,1,1)){
                blanco=-1;}
            else{
                argument0.blanco=blanco;
                if(argument0.vigilia=0){
                    dirijebombas(argument0);}
                argument0.vigilia=1;}}
        nn+=450*0.0555;}
    until(blanco>0 or nn>450*0.8888);}
